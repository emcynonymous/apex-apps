create or replace PROCEDURE  "HO_GENERATEBILL" (p_period_id number,
                                            p_bill_date date,
                                            p_due_date date)
is

--d_openMonth DATE;
--d_due_date DATE;
v_bill_total_amount NUMBER;
l_tran_pk NUMBER;
l_ar_pk NUMBER;
v_loan_amt NUMBER;
v_prev_period NUMBER;
v_loan_type NUMBER := 16;
v_desc VARCHAR2(1000);
v_outs_bal NUMBER;
BEGIN

/*
SELECT max(bill_hdr_id)
INTO l_ar_pk
FROM ho_billing_header;

SELECT max(tran_id)
  INTO l_tran_pk
  FROM ho_transactions;

SELECT d_value
  INTO d_openmonth
 FROM ho_parameters
WHERE param_name = 'OPEN_MO';

d_due_Date := add_months( d_openMonth, 1) -1;*/

SELECT max(period_id)
  INTO v_prev_period
 FROM ho_pay_period
WHERE period_id < p_period_id;

SELECT period_name
INTO v_desc
FROM ho_pay_period
WHERE period_id = p_period_id;

   FOR mem IN (select * from ho_members) LOOP
   
	v_bill_total_amount := 0;
    --l_ar_pk := nvl(l_ar_pk,0) +1;
    l_ar_pk := ho_bill_hdr_seq.NEXTVAL;


      INSERT INTO HO_BILLING_HEADER(bill_hdr_id
                                    ,member_id
                                    ,billing_Date
                                    , due_date
                                    ,closed_flag
                                    ,period_id
                                    ,created_date
                                    ,created_by)
        VALUES (l_ar_pk
                , mem.member_id
                ,p_bill_date
                , p_due_date
                ,'N'
                ,p_period_id
                , sysdate
               , v('APP_USER'));

        
        /**FIXED RATE**/
        
      FOR charg IN (SELECT * FROM ho_charge_type WHERE classification = 'F' 
                                AND  mem_status = mem.status_id) LOOP
        
          
         --l_tran_pk := nvl(l_tran_pk,0) + 1;        
         l_tran_pk := ho_tran_seq.NEXTVAL;

         INSERT INTO ho_transactions(tran_id,ar_no,member_id,charge_type_id,trans_desc,dr_cr,amount
                                     --,trans_date,receivable_date
                                     ,closed_flag, period_id, created_date, created_by)
         VALUES(l_tran_pk,l_ar_pk, mem.member_id, charg.charge_type_id, charg.charge_type_long||' ('||v_desc||')', charg.cr_dr, charg.fixed_amt
                --, d_openmonth, last_day(d_openmonth)
                ,'N',p_period_id, sysdate, v('APP_USER') );
        
         v_bill_total_amount := v_bill_total_amount + charg.fixed_amt;  --will remove
         
       
            
       END LOOP;--Charges
       
      
      /**LOAN AMMORT**/
      
      FOR loans IN (SELECT * 
                      FROM ho_loan_header 
                     WHERE member_id = mem.member_id
                       AND p_bill_Date between effective_Start_date and effective_end_Date) LOOP
                     
          FOR loan_dtl IN (SELECT * 
                            FROM ho_loan_detail
                          WHERE loan_hdr_id = loans.loan_hdr_id)LOOP
                          
                          
              
             l_tran_pk := ho_tran_seq.NEXTVAL;
             v_loan_amt := ROUND(  loan_dtl.AMMORTIZATION + nvl(loan_dtl.ADDTL_CHARGES,0) ,2);
             
              INSERT INTO ho_transactions(tran_id,ar_no,member_id,charge_type_id,trans_desc,dr_cr,amount
                                         --,trans_date,receivable_date
                                         ,closed_flag, period_id, created_date, created_by)
             VALUES(l_tran_pk,l_ar_pk, mem.member_id, v_loan_type, 'Loan Ammortization ('||v_desc||')', 'D',v_loan_amt
                    --, d_openmonth, last_day(d_openmonth)
                    ,'N',p_period_id, sysdate, v('APP_USER') );
             
             v_bill_total_amount  := v_bill_total_amount + v_loan_amt;
                    
          END LOOP;       --loan_detl   
      
      END LOOP; --loan_hdr
      
       /**INTEREST CALCULATION**/
       
       FOR inter IN (SELECT tran.tran_id, cha.interest_trans_type, cha.interest_rate, tran.amount , tran.trans_desc
                       FROM ho_transactions tran,
                             ho_charge_type cha
                       WHERE tran.charge_type_id=cha.charge_type_id
                         AND tran.charge_type_id=v_loan_type
                         AND tran.closed_flag = 'N'
                         AND tran.member_id=mem.member_id
                         AND cha.active_flag = 'Y'
                         AND period_id=v_prev_period ) LOOP
          
           FOR app IN (SELECT sum(nvl(amt_due,0))-sum(nvl(amt_credited,0)) app_amt
                         FROM ho_trans_application 
                        WHERE apply_to=inter.tran_id) LOOP
                        
                  v_loan_amt := nvl( app.app_amt , inter.amount);
           
           END LOOP;
       
             
         
            l_tran_pk := ho_tran_seq.NEXTVAL;
            v_loan_amt := ROUND( v_loan_amt * inter.INTEREST_RATE ,2);
            
            INSERT INTO ho_transactions(tran_id,ar_no,member_id,charge_type_id,trans_desc,dr_cr,amount
                                         --,trans_date,receivable_date
                                         ,closed_flag, period_id, created_date, created_by,parent_tran_id)
             VALUES(l_tran_pk,l_ar_pk, mem.member_id, inter.INTEREST_TRANS_TYPE, 'Loan Interest-'||inter.trans_desc, 'D',v_loan_amt
                    --, d_openmonth, last_day(d_openmonth)
                    ,'N',p_period_id, sysdate, v('APP_USER'), inter.tran_Id);
             
             v_bill_total_amount  := v_bill_total_amount + v_loan_amt;
       
       END LOOP;
       
       /**OUTSTANDING BALANCE**/
       FOR outs IN (SELECT amount 
                                  FROM ho_transactions 
                                where trans_desc='OUTSTANDING BALANCE' 
                                and member_id = mem.member_id) LOOP
                                
                                v_outs_bal := outs.amount;
        END LOOP;
       
       /**update total amount**/
       UPDATE ho_billing_header
         SET tot_amt_due = v_bill_total_amount + v_outs_bal
       WHERE bill_hdr_id = l_ar_pk;
       
   END LOOP; --Members
   
   UPDATE ho_parameters
   SET v_value = 'X'
   WHERE param_name = 'OPEN_MO';
   
   UPDATE ho_pay_period
    set bill_gen_flag = 'Y'
    WHERe period_id = p_period_id;
END;