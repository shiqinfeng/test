====================创建表

===============================================主计划===============================================
create  table IM_ImportPlan
(
    plan_key   int IDENTITY (1,1) PRIMARY KEY 
    plan_number  varchar(80) not null,
     part_number  varchar(80) not null,
    plan_qty   Float  not null,
    work_shop  varchar(80),
    plan_type  int not null,
    plan_starttime  datetime ,
    plan_finishtime  datetime,
    status  int ,
    route_name  varchar(80),
    plan_desc varchar(80),
    remarks  varchar(80)
    create_time datetime,
    modification_time datetime,
    modified_by varchar(80)
)

insert into IM_ImportPlan ( plan_number, part_number,plan_qty,plan_type) values ('A00001','B00001',1,2)
===================================================================库存信息查看==========================

create  table  IM_ImportStock
(
	stock_Key int IDENTITY (1,1) PRIMARY KEY,
    site_name  varchar(80) ,
    part_number  varchar(80),
    store_start  Float,
    store_in  float,
    store_back  float,
    store_out float,
    cust_back float,
    store_at float,
    create_time datetime
)


-----查询语句
select  disitint IM_stock_Key,site_name,part_number,store_start,store_in,store_back,store_out,cust_back,store_at,create_time  from   IM_ImportStock

========================================================销售订单信息查看======================================

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


-------------------------查询sql
--plan_1--
select sell_Key,sale_order,sale_order_old,customer_name,po_indate,sale_order_desc,
sale_order_date,part_number,erp_part_number,sale_qty,sale_price,safe_qty,plan_qty,
plan_date,deliver_date,seller,customer_id,order_remark,order_totle,po_progress,
audit_status,last_send,so_thmsend,produce_addr,send_history,last_modified_time,
po_otype,po_txperson,po_shperson,po_fhperson,po_zlperson,po_txdate,po_shdate,
po_fhdate,po_zldate,erp_customer_id,order_type,so_line,so_mark,po_gotdaynote,
obid,last_send_qty,this_send_qty,so_line_status,create_time
from  IM_ImportSell
--plan_2-----
select sell_Key,
sale_order,
sale_order_old,
customer_name,
(SUBSTRING(CONVERT(nvarchar, po_indate, 120), 1, 10))po_indate,
sale_order_desc,
(SUBSTRING(CONVERT(nvarchar, sale_order_date, 120), 1, 10))sale_order_date,
part_number,
erp_part_number,
sale_qty,
sale_price,
safe_qty,
plan_qty,
(SUBSTRING(CONVERT(nvarchar, plan_date, 120), 1, 10))plan_date,
(SUBSTRING(CONVERT(nvarchar, deliver_date, 120), 1, 10))deliver_date,
seller,
customer_id,
order_remark,
order_totle,
po_progress,
audit_status,
last_send,
so_thmsend,
produce_addr,
send_history,
(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 10))last_modified_time,
po_otype,
po_txperson,
po_shperson,
po_fhperson,
po_zlperson,
po_txdate,
(SUBSTRING(CONVERT(nvarchar, po_shdate, 120), 1, 10))po_shdate,
(SUBSTRING(CONVERT(nvarchar, po_fhdate, 120), 1, 10))po_fhdate,
(SUBSTRING(CONVERT(nvarchar, po_zldate, 120), 1, 10))po_zldate,
erp_customer_id,
order_type,
so_line,
so_mark,
po_gotdaynote,
obid,
last_send_qty,
this_send_qty,
so_line_status,
(SUBSTRING(CONVERT(nvarchar, create_time, 120), 1, 10))create_time
from IM_ImportSell





