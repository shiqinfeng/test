select * from  AT_OM_OrderRoute

select  *  from UDA_Order

select  plan_number_S,wc_key_I,wc_name,order_status_I  from UDA_OrderItem  um
left  join  work_center  wc on  um.wc_key_I = wc_key
where  1=1  and  wc_key = 2011


select  * from  UDA_OrderItem  where  1= 1