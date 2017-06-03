CREATE TABLE  "HO_BILLING_HEADER" 
   (	"BILL_HDR_ID" NUMBER NOT NULL ENABLE, 
	"MEMBER_ID" NUMBER NOT NULL ENABLE, 
	"BILLING_DATE" DATE, 
	"DUE_DATE" DATE, 
	"AMOUNT_PAID" NUMBER, 
	"TOT_AMT_DUE" NUMBER, 
	"CLOSED_FLAG" VARCHAR2(1) NOT NULL ENABLE, 
	"PERIOD_ID" NUMBER, 
	"CREATED_DATE" DATE, 
	"CREATED_BY" VARCHAR2(10),  
	 CONSTRAINT "HO_BILLING_HEADER_PK" PRIMARY KEY ("BILL_HDR_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_BILLING_DETAIL" 
   (	"BILL_DTL_ID" NUMBER NOT NULL ENABLE, 
	"BILL_HDR_ID" NUMBER NOT NULL ENABLE, 
	"CHARGE_TYPE_ID" NUMBER NOT NULL ENABLE, 
	"AMOUNT" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "HO_BILLING_DETAIL_PK" PRIMARY KEY ("BILL_DTL_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_CHARGE_TYPE" 
   (	"CHARGE_TYPE_ID" NUMBER, 
	"CHARGE_TYPE_SHORT" VARCHAR2(50), 
	"CHARGE_TYPE_LONG" VARCHAR2(100), 
	"CLASSIFICATION" VARCHAR2(1), 
	"PRIORITY" NUMBER, 
	"FIXED_AMT" NUMBER, 
	"MANUAL_ENTRY_FLAG" VARCHAR2(1), 
	"COMPUTE_INTEREST_FLAG" VARCHAR2(1), 
	"INTEREST_RATE" NUMBER, 
	"CR_DR" VARCHAR2(1), 
	"INTEREST_TRANS_TYPE" NUMBER, 
	"INTEREST_START_DATE" NUMBER, 
	"ACTIVE_FLAG" VARCHAR2(1), 
	 CONSTRAINT "HO_CHARGE_TYPE_PK" PRIMARY KEY ("CHARGE_TYPE_ID"),
mem_status NUMBER
  USING INDEX  ENABLE
   )
/

create sequence ho_charge_type_id_seq
increment by 1
start with 1;
/

CREATE OR REPLACE TRIGGER HO_CHARGE_TYPE_tbix
  BEFORE INSERT 
  ON HO_CHARGE_TYPE
  FOR EACH ROW
  -- Optionally restrict this trigger to fire only when really needed
  WHEN (new.charge_type_id is null)
DECLARE
  v_id HO_CHARGE_TYPE.CHARGE_TYPE_ID%TYPE;
BEGIN
  -- Select a new value from the sequence into a local variable. As David
  -- commented, this step is optional. You can directly select into :new.qname_id
  SELECT ho_charge_type_id_seq.nextval INTO v_id FROM DUAL;

  -- :new references the record that you are about to insert into qname. Hence,
  -- you can overwrite the value of :new.qname_id (qname.qname_id) with the value
  -- obtained from your sequence, before inserting
  :new.CHARGE_TYPE_ID := v_id;
END ho_charge_type_tbix;
/


CREATE TABLE  "HO_MEM_STATUS" 
   (	"STATUS_ID" NUMBER NOT NULL ENABLE, 
	"STATUS_DESC" VARCHAR2(100) NOT NULL ENABLE, 
	 CONSTRAINT "HO_MEM_STATUS_PK" PRIMARY KEY ("STATUS_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_MEMBERS" 
   (	"MEMBER_ID" NUMBER NOT NULL ENABLE, 
	"ACCOUNT_NO" VARCHAR2(15), 
	"LAST_NAME" VARCHAR2(100) NOT NULL ENABLE, 
	"FIRST_NAME" VARCHAR2(100) NOT NULL ENABLE, 
	"PHASE_NO" NUMBER, 
	"BLK_NO" VARCHAR2(3), 
	"LOT_NO" NUMBER, 
	"HOME_LOT_AREA" NUMBER, 
	"OPEN_SPACE" NUMBER, 
	"CMP_LOT" NUMBER, 
	"MONTHLY_INCOME" NUMBER, 
	"BIRTHDATE" DATE, 
	"STATUS_ID" NUMBER, 
	"MIDDLE_NAME" VARCHAR2(50), 
  street_name varchar2(100),
	 CONSTRAINT "HO_MEMBERS_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "HO_MEMBERS_UK1" UNIQUE ("ACCOUNT_NO")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_HOUSING_LOAN" 
   (	"LOAN_ID" NUMBER, -- GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"MEMBER_ID" NUMBER, 
	"REQD_DOWN_PCT" NUMBER, 
	"LOAN_DESC" VARCHAR2(100), 
	"HOME_LOT_AREA" NUMBER, 
	"OPEN_SPACE" NUMBER, 
	"BEGIN_DATE" DATE, 
	"MATURITY_DATE" DATE, 
	"CHARGE_TYPE_ID" NUMBER, 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATE_BY" DATE, 
	"LOT_VALUE" NUMBER, 
	 CONSTRAINT "HO_HOUSING_LOAN_PK" PRIMARY KEY ("LOAN_ID")
  USING INDEX  ENABLE
   )
/


create sequence ho_member_id_seq
increment by 1
start with 1;
/

CREATE OR REPLACE TRIGGER ho_members_tbix
  BEFORE INSERT 
  ON ho_members
  FOR EACH ROW
  -- Optionally restrict this trigger to fire only when really needed
  WHEN (new.member_id is null)
DECLARE
  v_id ho_members.member_id%TYPE;
BEGIN
  -- Select a new value from the sequence into a local variable. As David
  -- commented, this step is optional. You can directly select into :new.qname_id
  SELECT ho_member_id_seq.nextval INTO v_id FROM DUAL;

  -- :new references the record that you are about to insert into qname. Hence,
  -- you can overwrite the value of :new.qname_id (qname.qname_id) with the value
  -- obtained from your sequence, before inserting
  :new.member_id := v_id;
END ho_members_tbix;
/


create sequence ho_loan_id_seq
increment by 1
start with 1;
/

CREATE OR REPLACE TRIGGER ho_housing_loan_tbix
  BEFORE INSERT 
  ON ho_housing_loan
  FOR EACH ROW
  -- Optionally restrict this trigger to fire only when really needed
  WHEN (new.loan_id is null)
DECLARE
  v_id ho_housing_loan.loan_id%TYPE;
BEGIN
  -- Select a new value from the sequence into a local variable. As David
  -- commented, this step is optional. You can directly select into :new.qname_id
  SELECT ho_loan_id_seq.nextval INTO v_id FROM DUAL;

  -- :new references the record that you are about to insert into qname. Hence,
  -- you can overwrite the value of :new.qname_id (qname.qname_id) with the value
  -- obtained from your sequence, before inserting
  :new.loan_id := v_id;
END ho_housing_loan_tbix;
/

CREATE TABLE  "HO_LOAN_DETAIL" 
   (	"LOAN_HDR_ID" NUMBER NOT NULL ENABLE, 
	"LOAN_DTL_ID" NUMBER, -- GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"AMMORTIZATION" NUMBER NOT NULL ENABLE, 
	"PERIOD_ID" NUMBER NOT NULL ENABLE, 
	"ADDTL_CHARGES" NUMBER(*,5), 
	 CONSTRAINT "HO_LOAN_DETAIL_PK" PRIMARY KEY ("LOAN_DTL_ID")
  USING INDEX  ENABLE
   )
/

create sequence ho_loan_detail_id_seq
increment by 1
start with 1;
/

CREATE OR REPLACE TRIGGER HO_LOAN_DETAIL_tbix
  BEFORE INSERT 
  ON HO_LOAN_DETAIL
  FOR EACH ROW
  -- Optionally restrict this trigger to fire only when really needed
  WHEN (new.LOAN_DTL_ID is null)
DECLARE
  v_id HO_LOAN_DETAIL.LOAN_DTL_ID%TYPE;
BEGIN
  -- Select a new value from the sequence into a local variable. As David
  -- commented, this step is optional. You can directly select into :new.qname_id
  SELECT ho_loan_id_seq.nextval INTO v_id FROM DUAL;

  -- :new references the record that you are about to insert into qname. Hence,
  -- you can overwrite the value of :new.qname_id (qname.qname_id) with the value
  -- obtained from your sequence, before inserting
  :new.LOAN_DTL_ID := v_id;
END ho_housing_loan_tbix;
/

CREATE TABLE  "HO_LOAN_HEADER"  --++
   (	"LOAN_HDR_ID" NUMBER, -- GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"MEMBER_ID" NUMBER NOT NULL ENABLE, 
	"REQD_DOWN_PCT" NUMBER NOT NULL ENABLE, 
	"EFFECTIVE_START_DATE" DATE NOT NULL ENABLE, 
	"EFFECTIVE_END_DATE" DATE NOT NULL ENABLE, 
	"PAYMENT_TERMS" VARCHAR2(1) NOT NULL ENABLE, 
	"TOTAL_COST" NUMBER, 
	"LOAN_AMT" NUMBER, 
	"TOTAL_AMOUNT" NUMBER, 
	 CONSTRAINT "HO_LOAN_HEADER_PK" PRIMARY KEY ("LOAN_HDR_ID")
  USING INDEX  ENABLE
   )
/
create sequence LOAN_HDR_ID_SEQ
increment by 1
start with 1;
/


CREATE OR REPLACE TRIGGER HO_LOAN_HEADER_tbix
  BEFORE INSERT 
  ON HO_LOAN_HEADER
  FOR EACH ROW
  -- Optionally restrict this trigger to fire only when really needed
  WHEN (new.LOAN_HDR_ID is null)
DECLARE
  v_id HO_LOAN_DETAIL.LOAN_HDR_ID%TYPE;
BEGIN
  -- Select a new value from the sequence into a local variable. As David
  -- commented, this step is optional. You can directly select into :new.qname_id
  SELECT LOAN_HDR_ID_SEQ.nextval INTO v_id FROM DUAL;

  -- :new references the record that you are about to insert into qname. Hence,
  -- you can overwrite the value of :new.qname_id (qname.qname_id) with the value
  -- obtained from your sequence, before inserting
  :new.LOAN_HDR_ID := v_id;
END ho_housing_loan_tbix;
/

CREATE TABLE  "HO_MEMBER_LOANS" 
   (	"MEMBER_ID" NUMBER, 
	"TOT_LOAN_AMT" NUMBER, 
	"TOTAL_LOT_COST" NUMBER, 
	"DOWN_PAYMENT" NUMBER, 
	"PRINIPAL" NUMBER, 
	"MRI" NUMBER, 
	"OUTSTANDING_BALANCE" NUMBER, 
	"MON_AMORT" NUMBER, 
	 CONSTRAINT "HO_MEMBER_LOANS_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_PARAMETERS" 
   (	"PARAM_ID" NUMBER NOT NULL ENABLE, 
	"PARAM_NAME" VARCHAR2(20) NOT NULL ENABLE, 
	"REMARKS" VARCHAR2(1000) NOT NULL ENABLE, 
	"N_VALUE" NUMBER, 
	"V_VALUE" VARCHAR2(100), 
	"D_VALUE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(10), 
	"LAST_UPDATED_DATE" DATE, 
	 CONSTRAINT "HO_PARAMETERS_PK" PRIMARY KEY ("PARAM_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_PAYMENT_HEADER" 
   (	"PAYMENT_HDR_ID" NUMBER NOT NULL ENABLE, 
	"BILL_HDR_ID" NUMBER NOT NULL ENABLE, 
	"AMOUNT" NUMBER NOT NULL ENABLE, 
	"DATE_PAID" DATE NOT NULL ENABLE, 
	"RECEIVED_BY" VARCHAR2(10) NOT NULL ENABLE, 
	 CONSTRAINT "HO_PAYMENT_HEADER_PK" PRIMARY KEY ("PAYMENT_HDR_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_PAYMENT_DETAIL" 
   (	"PAYMENT_DTL_ID" NUMBER NOT NULL ENABLE, 
	"PAYMENT_HDR_ID" NUMBER NOT NULL ENABLE, 
	"BILL_DTL_ID" NUMBER NOT NULL ENABLE, 
	"AMOUNT" NUMBER NOT NULL ENABLE, 
	"CHARGE_TYPE_ID" NUMBER, 
	 CONSTRAINT "HO_PAYMENT_DETAIL_PK" PRIMARY KEY ("PAYMENT_DTL_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_PAY_PERIOD" 
   (	"PERIOD_ID" NUMBER,-- GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"PERIOD_NAME" VARCHAR2(10) NOT NULL ENABLE, 
	"START_DATE" DATE NOT NULL ENABLE, 
	"END_DATE" DATE NOT NULL ENABLE, 
	"OPEN_FLAG" VARCHAR2(1) NOT NULL ENABLE, 
	"BILL_GEN_FLAG" VARCHAR2(1), 
	 CONSTRAINT "HO_PAY_PERIOD_PK" PRIMARY KEY ("PERIOD_ID")
  USING INDEX  ENABLE
   )
/

create sequence ho_pay_period_id_seq
increment by 1
start with 1;
/

CREATE OR REPLACE TRIGGER HO_PAY_PERIOD_tbix
  BEFORE INSERT 
  ON HO_PAY_PERIOD
  FOR EACH ROW
  -- Optionally restrict this trigger to fire only when really needed
  WHEN (new.PERIOD_ID is null)
DECLARE
  v_id HO_PAY_PERIOD.PERIOD_ID%TYPE;
BEGIN
  -- Select a new value from the sequence into a local variable. As David
  -- commented, this step is optional. You can directly select into :new.qname_id
  SELECT HO_PAY_PERIOD_ID_SEQ.nextval INTO v_id FROM DUAL;

  -- :new references the record that you are about to insert into qname. Hence,
  -- you can overwrite the value of :new.qname_id (qname.qname_id) with the value
  -- obtained from your sequence, before inserting
  :new.PERIOD_ID := v_id;
END ho_housing_loan_tbix;
/

CREATE TABLE  "HO_TRANSACTIONS" 
   (	"TRAN_ID" NUMBER, 
	"AR_NO" NUMBER, 
	"MEMBER_ID" NUMBER, 
	"CHARGE_TYPE_ID" NUMBER, 
	"TRANS_DESC" VARCHAR2(100), 
	"CLOSED_FLAG" VARCHAR2(1) NOT NULL ENABLE, 
	"DR_CR" VARCHAR2(1), 
	"AMOUNT" NUMBER, 
	"TRANS_DATE" DATE, 
	"RECEIVABLE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(10), 
	"LAST_UPDATED_DATE" DATE, 
	"PARENT_TRAN_ID" NUMBER, 
	"UNAPPLIED_AMT" NUMBER, 
	"CLOSED_DATE" DATE, 
	"TRANSFERRED_FLAG" VARCHAR2(1), 
	"PERIOD_ID" NUMBER, 
	"CREATED_DATE" DATE, 
	"CREATED_BY" VARCHAR2(10), 
	 CONSTRAINT "HO_TRANSACTIONS_PK" PRIMARY KEY ("TRAN_ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HO_TRANS_APPLICATION" 
   (	"TRAN_APP_ID" NUMBER, 
	"TRAN_ID" NUMBER, 
	"APPLY_TO" NUMBER, 
	"AMT_DUE" NUMBER, 
	"AMT_CREDITED" NUMBER, 
	"LAST_UPDATED_BY" VARCHAR2(100), 
	"LAST_UPDATED_DATE" DATE
   )
/
ALTER TABLE  "HO_BILLING_DETAIL" ADD CONSTRAINT "HO_BILLING_DETAIL_FK" FOREIGN KEY ("BILL_HDR_ID")
	  REFERENCES  "HO_BILLING_HEADER" ("BILL_HDR_ID") ENABLE
/
ALTER TABLE  "HO_CHARGE_TYPE" ADD CONSTRAINT "HO_CHARGE_TYPE_FK1" FOREIGN KEY ("INTEREST_TRANS_TYPE")
	  REFERENCES  "HO_CHARGE_TYPE" ("CHARGE_TYPE_ID") ENABLE
/
ALTER TABLE  "HO_HOUSING_LOAN" ADD CONSTRAINT "HO_HOUSING_LOAN_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES  "HO_MEMBERS" ("MEMBER_ID") ENABLE
/
ALTER TABLE  "HO_LOAN_HEADER" ADD CONSTRAINT "HO_LOAN_HEADER_FK" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES  "HO_MEMBERS" ("MEMBER_ID") ENABLE
/
ALTER TABLE  "HO_MEMBERS" ADD CONSTRAINT "HO_MEMBERS_FK1" FOREIGN KEY ("STATUS_ID")
	  REFERENCES  "HO_MEM_STATUS" ("STATUS_ID") ENABLE
/
ALTER TABLE  "HO_PAYMENT_DETAIL" ADD CONSTRAINT "HO_PAYMENT_DETAIL_FK" FOREIGN KEY ("PAYMENT_HDR_ID")
	  REFERENCES  "HO_PAYMENT_HEADER" ("PAYMENT_HDR_ID") ENABLE
/
ALTER TABLE  "HO_TRANSACTIONS" ADD CONSTRAINT "HO_TRANSACTIONS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES  "HO_MEMBERS" ("MEMBER_ID") ENABLE
/
ALTER TABLE  "HO_TRANSACTIONS" ADD CONSTRAINT "HO_TRANSACTIONS_FK2" FOREIGN KEY ("CHARGE_TYPE_ID")
	  REFERENCES  "HO_CHARGE_TYPE" ("CHARGE_TYPE_ID") ENABLE
/


create sequence ho_bill_hdr_seq
increment by 1
start with 1;
/

create sequence ho_tran_seq
increment by 1
start with 1;
/

CREATE OR REPLACE FUNCTION  "HO_SCRAMBLEDATA" (p_data_in VARCHAR2, p_data_type VARCHAR2) RETURN VARCHAR2
AS 

len NUMBER;
v_out VARCHAR2(100);


BEGIN

len := LENGTH(p_data_in)-2;
v_out := substr(p_data_in,1,2);

IF p_data_type = 'NAME' THEN

WHILE len > 0  LOOP
    v_out := v_out ||'X';
    len := len -1;
END LOOP;

ELSE
  v_out := 'XXXXXXXX' || SUBSTR(p_data_in,-3);
END IF;

RETURN v_out;

END;
/

CREATE OR REPLACE  FUNCTION  "HO_GET_TRANTYPE" 
(p_charge_type_id in NUMBER)
return VARCHAR2
is
v_Charge_type ho_charge_type.charge_type_short%TYPE;
begin

SELECT charge_type_short
  INTO v_Charge_type
  FROM ho_charge_Type
 WHERE charge_type_id = p_charge_type_id;
 

RETURN v_charge_type;
EXCEPTION WHEN NO_DATA_FOUND THEN
 RETURN NULL;

end;
/

CREATE OR REPLACE  PROCEDURE  "HO_GENERATEBILL" (p_period_id number,
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
        
      FOR charg IN (SELECT * FROM ho_charge_type WHERE classification = 'F') LOOP
        
          
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
       
       UPDATE ho_billing_header
         SET tot_amt_due = v_bill_total_amount
       WHERE bill_hdr_id = l_ar_pk;
       
   END LOOP; --Members
   
   UPDATE ho_parameters
   SET v_value = 'X'
   WHERE param_name = 'OPEN_MO';
   
   UPDATE ho_pay_period
    set bill_gen_flag = 'Y'
    WHERe period_id = p_period_id;
END;
/

CREATE OR REPLACE  PROCEDURE  "HO_APPLYPAYMENT" (p_payment_hdr_id IN NUMBER)
is

v_bill_hdr_id ho_payment_header.bill_hdr_id%TYPE;
v_payt_dtl_pk ho_payment_detail.PAYMENT_DTL_ID%TYPE;
v_tot_amt_paid NUMBER;

begin

SELECT bill_hdr_id, amount
  INTO v_bill_hdr_id, v_tot_amt_paid
  FROM ho_payment_header
  WHERE payment_hdr_id = p_payment_hdr_id;
 
 SELECT max(payment_dtl_id)    
   INTO v_payt_dtl_pk
   FROM ho_payment_detail;
 
 v_payt_dtl_pk := nvl(v_payt_dtl_pk,0);      
 

    FOR app IN (select b.* ,c.priority
                From ho_billing_detail b, ho_charge_type c
                where bill_hdr_id =v_bill_hdr_id
                and c.charge_type_id = b.charge_type_id
                and c.classification in ('F','C')
                order by c.priority) LOOP

     IF v_tot_amt_paid >= app.amount  THEN
        
        v_payt_dtl_pk := v_payt_dtl_pk + 1;
        
        INSERT INTO ho_payment_detail (payment_dtl_id, payment_hdr_id, bill_dtl_id, amount)
        VALUES (v_payt_dtl_pk, p_payment_hdr_id , app.bill_dtl_id, app.amount);
        
        v_tot_amt_paid := v_tot_amt_paid - app.amount;
                 
     END IF;
 
   END LOOP;



end;
/

