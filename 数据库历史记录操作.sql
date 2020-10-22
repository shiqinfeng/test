use  MESPDB
create  table IM_ImportSell
(
   sell_Key int IDENTITY (1,1) PRIMARY KEY,
   sale_order  varchar(80),----订单编号
   sale_order_old  varchar(80),-----旧订单编号
   customer_name varchar(80),------客户名称
   po_indate  datetime,-------订单录入日期
   sale_order_desc varchar(80),-----ERP订单编号
   sale_order_date  datetime,----订单日期
   part_number  varchar(80),---产品型号
   erp_part_number varchar(80),---------ERP物料编码
   sale_qty  Float,------------销售数量
   sale_price  Float,--------------销售单价
   safe_qty Float,-----------------安全库存
   plan_qty Float, --------------计划数量
   plan_date  datetime,-------------计划日期
   deliver_date  datetime,--------------交货日期
   seller varchar(80),---------------业务员
   customer_id  varchar(80),-----------------客户编码
   order_remark varchar(80),-----------订单备注
   order_totle  int ,
   po_progress varchar(80),
   audit_status int , -------------审核状态
   last_send Float,----------------上期发货
   so_thmsend int,
   produce_addr varchar(255),-------------生产地址
   send_history varchar(80),----------------发货历史
   last_modified_time datetime,------------修改日期
   po_otype int,
   po_txperson varchar(80),---------------订单录入人员
   po_shperson varchar(80),----------------订单审核人员
   po_fhperson varchar(80),-------------------订单发货人员
   po_zlperson varchar(80),-----------------线长
   po_txdate datetime ,-----------------填写日期
   po_shdate datetime,---------------订单收货日期
   po_fhdate datetime ,---------------------订单发货日期
   po_zldate  datetime,----------------------订单转入日期
   erp_customer_id varchar(80) , ----------ERP客户编号
   order_type int, ------------------------订单类型
   so_line varchar(80),-------------------ERP订单行
   so_mark varchar(80),----------------ERP订单号
   po_gotdaynote varchar(80),------订单周期备注
   obid varchar(80),------------------ERP行OBID
   last_send_qty float,--------------------上期发货
   this_send_qty float,---------------当期发货
   so_line_status  int ,----------------ERP订单行状态
   create_time datetime------------------创建日期

)



select  * from  IM_ImportStock;

select * from   IM_ImportSell;

select * from   IM_ImportPlan;



select  IM_stock_Key,site_name,part_number,store_start,store_in,store_back,store_out,cust_back,store_at,create_time  from   IM_ImportStock;

select sell_Key,sale_order,sale_order_old, customer_name,po_indate,sale_order_desc,
sale_order_date,part_number,erp_part_number,sale_qty,sale_price,safe_qty,plan_qty,
plan_date,deliver_date,seller,customer_id,order_remark,order_totle,po_progress,
audit_status,last_send,so_thmsend,produce_addr,send_history,last_modified_time,
po_otype,po_txperson,po_shperson,po_fhperson,po_zlperson,po_txdate,po_shdate,
po_fhdate,po_zldate,erp_customer_id,order_type,so_line,so_mark,po_gotdaynote,
obid,last_send_qty,this_send_qty,so_line_status,create_time
from  IM_ImportSell



select sell_Key,sale_order,sale_order_old,
customer_name,po_indate,sale_order_desc,sale_order_date,
part_number,erp_part_number,sale_qty,sale_price,safe_qty,
plan_qty,plan_date,deliver_date,seller,customer_id,order_remark,
order_totle,po_progress,audit_status,last_send,so_thmsend,
produce_addr,send_history,last_modified_time,po_otype,po_txperson,
po_shperson,po_fhperson,po_zlperson,po_txdate,po_shdate,po_fhdate,
po_zldate,erp_customer_id,order_type,so_line,so_mark,po_gotdaynote,obid,
last_send_qty,this_send_qty,so_line_status,create_time
from IM_ImportSell



select distinct '',
               Company_Code_S ,Product_Type_S ,Material_Code_S,Store_Start_I, Store_In_I,
Store_Back_I,Store_Out_I,Cust_Back_I,Store_At_I
from  AT_OM_ImportStock where 1=1 

select  distinct '', IM_stock_Key,site_name,part_number,store_start,store_in,store_back,
store_out,cust_back,store_at,create_time  from   IM_ImportStock  where   1=1 

truncate  table  IM_ImportStock

drop table  IM_ImportSell;
drop table IM_ImportStock;



create  table  IM_ImportStock
(  
    stock_Key int IDENTITY (1,1) PRIMARY KEY,
    site_name  NVARCHAR(80) ,
    part_number  varchar(80),
    store_start  Float,
    store_in  float,
    store_back  float,
    store_out float,
    cust_back float,
    store_at float,
    create_time datetime ------IMS-MES导入时间
)


insert into IM_ImportStock( site_name,part_number,store_start,store_in,store_back,
store_out,cust_back,store_at,create_time) values (N'南京东睦','A1000000004',10000,20000,3000,5000,60000,2000,getdate())

insert into  IM_ImportStock (site_name) values(N'广州')


select  distinct '',site_name,part_number,store_start,store_in,store_back,
store_out,cust_back,store_at,(SUBSTRING(CONVERT(nvarchar, create_time, 120), 1, 10))create_time  from   IM_ImportStock  where 1=1    and part_number = 'A1000000004' and site_name like '%广州%'  


select  distinct '',site_name,part_number,store_start,store_in,store_back,
store_out,cust_back,store_at,create_time  from   IM_ImportStock  where 1=1    and part_number = 'A1000000005'  

update IM_ImportStock set site_name = N'宁波东睦' where  part_number = 'A1000000004'



SELECT  
DATABASEPROPERTYEX('test','COLLATION') AS [指定数据库对应的排序规则]
,DATABASEPROPERTYEX(DB_NAME(),'COLLATION') AS [当前数据库对应的排序规则]
 
--获取数据库引擎下所有数据库对应的排序规则
SELECT name, collation_name FROM sys.databases   



create  table IM_ImportSell
(

sell_Key int IDENTITY (1,1) PRIMARY KEY,
sale_order	varchar(80),
sale_order_old	varchar(80),
customer_name	NVARCHAR(80),
po_indate	datetime,
sale_order_desc	varchar(80),
sale_order_date	datetime,
part_number	varchar(80),
erp_part_number	varchar(80),
sale_qty	Float,
sale_price	Float,
safe_qty	Float,
plan_qty	Float,
plan_date	datetime,
deliver_date	datetime,
seller	NVARCHAR(80),
customer_id	varchar(80),
order_remark	NVARCHAR(255),
order_totle	int null,
po_progress	varchar(80),
audit_status	int,
last_send	Float,
so_thmsend	int null,
produce_addr NVARCHAR(255),
send_history	varchar(80),
last_modified_time	datetime,
po_otype	int,
po_txperson	NVARCHAR(80),
po_shperson	NVARCHAR(80),
po_fhperson	NVARCHAR(80),
po_zlperson	NVARCHAR(80),
po_txdate	datetime,
po_shdate	datetime,
po_fhdate	datetime,
po_zldate	datetime,
erp_customer_id	varchar(80),
order_type	int,
so_line	varchar(80),
so_mark	varchar(80),
po_gotdaynote	NVARCHAR(80),
obid	varchar(80),
last_send_qty	float,
this_send_qty	float,
so_line_status	int,
create_time	datetime

)

select  * from  IM_ImportSell


select sell_Key,sale_order,sale_order_old,customer_name,po_indate,sale_order_desc,
sale_order_date,part_number,erp_part_number,sale_qty,sale_price,safe_qty,plan_qty,
plan_date,deliver_date,seller,customer_id,order_remark,order_totle,po_progress,
audit_status,last_send,so_thmsend,produce_addr,send_history,last_modified_time,
po_otype,po_txperson,po_shperson,po_fhperson,po_zlperson,po_txdate,po_shdate,
po_fhdate,po_zldate,erp_customer_id,order_type,so_line,so_mark,po_gotdaynote,
obid,last_send_qty,this_send_qty,so_line_status,create_time
from  IM_ImportSell



select sell_Key,
sale_order,sale_order_old,customer_name,
(SUBSTRING(CONVERT(nvarchar, po_indate, 120), 1, 10))po_indate,sale_order_desc,
(SUBSTRING(CONVERT(nvarchar, sale_order_date, 120), 1, 10))sale_order_date,
part_number,erp_part_number,sale_qty,sale_price,safe_qty,plan_qty,
(SUBSTRING(CONVERT(nvarchar, plan_date, 120), 1, 10))plan_date,
(SUBSTRING(CONVERT(nvarchar, deliver_date, 120), 1, 10))deliver_date,
seller,customer_id,order_remark,order_totle,po_progress,audit_status,last_send,
so_thmsend,produce_addr,send_history,
(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 10))last_modified_time,
po_otype,po_txperson,po_shperson,po_fhperson,po_zlperson,
(SUBSTRING(CONVERT(nvarchar, po_txdate, 120), 1, 10))po_txdate,
(SUBSTRING(CONVERT(nvarchar, po_shdate, 120), 1, 10))po_shdate,
(SUBSTRING(CONVERT(nvarchar, po_fhdate, 120), 1, 10))po_fhdate,
(SUBSTRING(CONVERT(nvarchar, po_zldate, 120), 1, 10))po_zldate,
erp_customer_id,order_type,so_line,so_mark,po_gotdaynote,obid,last_send_qty,this_send_qty,so_line_status,
(SUBSTRING(CONVERT(nvarchar, create_time, 120), 1, 10))create_time
from IM_ImportSell  where  1=1 




insert into IM_ImportSell
(
sale_order,sale_order_old,customer_name,po_indate,sale_order_desc,
sale_order_date,part_number,erp_part_number,sale_qty,sale_price,safe_qty,plan_qty,
plan_date,deliver_date,seller,customer_id,order_remark,order_totle,po_progress,
audit_status,last_send,so_thmsend,produce_addr,send_history,last_modified_time,
po_otype,po_txperson,po_shperson,po_fhperson,po_zlperson,po_txdate,po_shdate,
po_fhdate,po_zldate,erp_customer_id,order_type,so_line,so_mark,po_gotdaynote,
obid,last_send_qty,this_send_qty,so_line_status,create_time

)
values(
'A0001',
'A0000001',
N'南京测试',
getdate(),
'A1000000004',
getdate()+1,
'A1000000004',
'BA1100',
'100000',
'12.1',
'200000',
'80000',
getdate()+4,
getdate(),
N'杨静',
'B00001',
N'这是一个测试订单',
'12',
'12',
'3',
'1000000',
' ',
N'东睦股份',
'123',
getdate(),
' ',
N'张三',
N'李四',
N'王五',
N'刘三',
getdate(),
getdate()-1,
getdate()+1,
getdate(),
'A230983409238',
'2',
'1212',
'234234',
N'测试',
'1212',
'234322',
'2343212',
'1',
getdate()

)


            -------------------------------------------------2020年4月29------------------------------------------------------------------


select * from IM_ImportStock

select  * from  [IMS-->MES--part中间表]-
----------------------------------------------------------删除多余的表-----------------------------------------------------------------------------------------
drop  table [IMS-->MES--part中间表]

select * from  IM_ImportPlan


insert into  IM_ImportPlan (plan_number,part_number,plan_qty,work_shop,plan_type,status) values('A1000002','B00001',12122,'ABDSADKJD',1,1)
select  '', plan_number_S,part_number_S,plan_qty_F,work_shop_S,plan_type_I,(SUBSTRING(CONVERT(nvarchar, plan_starttime_T, 120), 1, 10))plan_starttime_T,
               (SUBSTRING(CONVERT(nvarchar, plan_finishtime_T, 120), 1, 10))plan_finishtime_T,status_I,route_name_S,plan_desc_S,remarks_S,
               (SUBSTRING(CONVERT(nvarchar, create_time_T, 120), 1, 10))create_time_T,modification_time_T ,modified_by_S,import_key_I ,atr_key from  AT_IM_ImportPlan where 1= 1 and  status_I =1


			   delete   from IM_ImportPlan where plan_type = '1'





			   select * from site

			   select  * from  area

			   select  * from  PRODUCTION_LINE

			        select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_name_S+oi.operation_desc_S)op_step,oi.p_line_key_S,oi.work_center_S,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,oi.seq_number_I,oi.order_status_I,oi.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I
			 , (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,wis.finished_time,oi.remark_S ,wis.order_item
			 from WORK_ORDER_ITEMS wis
			  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
			 left join WORK_ORDER wo on wo.order_key = wis.order_key 
			 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
			 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
			 left  join AREA ar on ar.area_key = al.parent_key
			 left join SITE_AREA  sa on sa.child_key = ar.area_key
			 left join site si on si.site_key = sa.parent_key

			 p


			      select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_name_S+oi.operation_desc_S)op_step,oi.p_line_key_S,oi.work_center_S,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,oi.seq_number_I,oi.order_status_I,oi.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I
			 , (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,wis.finished_time,oi.remark_S ,wis.order_item
			 from WORK_ORDER_ITEMS wis
			  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
			 left join WORK_ORDER wo on wo.order_key = wis.order_key 
			 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
			 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
			 left  join AREA ar on ar.area_key = al.parent_key
			 left join SITE_AREA  sa on sa.child_key = ar.area_key
			 left join site si on si.site_key = sa.parent_key
			  where 1=1  and oi.order_status_I= 10 and  oi.report_flag_I = 20	


			  select  '', plan_number_S,part_number_S,cast(plan_qty_F as decimal)plan_qty_F,work_shop_S,plan_type_I,(SUBSTRING(CONVERT(nvarchar, plan_starttime_T, 120), 1, 10))plan_starttime_T,
                   (SUBSTRING(CONVERT(nvarchar, plan_finishtime_T, 120), 1, 10))plan_finishtime_T,status_I,route_name_S,plan_desc_S,remarks_S,
                   (SUBSTRING(CONVERT(nvarchar, create_time_T, 120), 1, 10))create_time_T,(SUBSTRING(CONVERT(nvarchar,modification_time_T, 120), 1, 10))modification_time_T ,modified_by_S,import_key_I,atr_key from  AT_IM_ImportPlan where 1= 1



	 select '' ,itm.plan_number_S,wis.order_item,itm.p_line_key_S ,wis.planned_route,itm.equipment_class_S,itm.work_center_S ,(itm.operation_desc_S+itm.operation_name_S)operation,itm.order_type_I,wis.part_number,wis.bom_name,wis.bom_revision  ,
			  (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 13))planned_start_time,(SUBSTRING(CONVERT(nvarchar, wis.planned_finish_time, 120), 1, 13))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,itm.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar, itm.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,itm.order_status_I,cast(Wis.quantity_ordered as decimal) quantity_ordered,cast(itm.load_material_qty_f as decimal)load_material_qty_f,cast(Wis.quantity_finished as decimal)quantity_finished,
			  (SUBSTRING(CONVERT(nvarchar, wis.last_modified_time, 120), 1, 19))last_modified_time,itm.created_by_S,itm.created_by_desc_S,(SUBSTRING(CONVERT(nvarchar,Wis.creation_time, 120), 1, 19))creation_time,
			  (SUBSTRING(CONVERT(nvarchar, wis.finished_time, 120), 1, 13))finished_time,itm.remark_S,itm.seq_number_I,itm.report_flag_I,itm.last_report_flag_I,itm.send_pline_key_I,itm.reception_pline_key_I
			  from   UDA_OrderItem itm
			 left join WORK_ORDER_ITEMS Wis on itm.object_key = Wis.order_item_key
			 left join WORK_ORDER Wo on Wo.order_key = Wis.order_key
			 where 1=1    order by orderstep_seq_I