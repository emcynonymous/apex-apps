select * from ho_billing_header;

delete ho_billing_header a where not exists (select 1 from ho_transactions b where a.bill_hdr_id=b.ar_no);

delete from ho_transactions where charge_type_id <> 9;

update ho_pay_period set bill_gen_flag =null where period_id = 13;