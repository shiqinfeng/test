
			 select *from AT_OM_OrderRoute  where  1=1 and  order_number_S = 'MO-200727001'

			 select*from  AT_OM_OrderRouteStep where  order_route_key_I = 26391

			 select orderstep_seq_I,operation_name_S+':'+operation_desc_S , pline_key_I,wc_key_S from  AT_OM_OrderRouteStep where  order_route_key_I = 26391


			 select  *from PRODUCTION_LINE  where  p_line_key = 4289


			 select   uoi.orderstep_seq_I ,uoi.operation_name_S,pl.p_line_name+':'+pl.description,wc.wc_name,
            case uoi.report_flag_I   when 10 then  '' when 20 then N'是' else '' end
            from  WORK_ORDER wo inner join UDA_Order uo on wo.order_key = uo.object_key
            inner join WORK_ORDER_ITEMS woi on woi.order_key = wo.order_key
            inner join UDA_OrderItem uoi on woi.order_item_key = uoi.object_key 
         left join WORK_CENTER wc on uoi.wc_key_I = wc.wc_key  
   left join PRODUCTION_LINE pl on pl.p_line_key = uo.production_line_f_S
   where 1=1  and  wo.order_number = 'MO-200727001'


   select  ap.orderstep_seq_I,ap.operation_name_S,pl.p_line_name+':'+pl.description  ,wc.wc_name,  case ap.report_flag_I   when 10 then  '' when 20 then N'是' else '' end  
   from   AT_OM_OrderRouteStep ap
   left join PRODUCTION_LINE pl on pl.p_line_key = ap.pline_key_I 
   left  join  AT_OM_OrderRoute  ae on ae.atr_key = ap.order_route_key_I
   left  join  WORK_CENTER  wc  on wc.wc_key = ap.wc_key_S
   where  ae.order_number_S = 'MO-200727001'


   select  * from  IM_ImportPlan

   select plan_key, plan_number,part_number,plan_qty,work_shop,plan_type,(SUBSTRING(CONVERT(nvarchar, plan_starttime, 120), 1, 10))plan_starttime,
                   (SUBSTRING(CONVERT(nvarchar, plan_finishtime, 120), 1, 10)) plan_finishtime,status,route_name,plan_desc,remarks,
				   (SUBSTRING(CONVERT(nvarchar, create_time, 120), 1, 10))create_time,modification_time,modified_by    from  IM_ImportPlan  where 1=1  and  plan_number = 'MO-200710013'







 select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_desc_S+':'+oi.operation_name_S)op_step,oi.p_line_key_S,oi.wc_key_I,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,oi.seq_number_I,oi.order_status_I,oi.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I,
 (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,(SUBSTRING(CONVERT(nvarchar,oi.close_time_t, 120), 1, 20))close_time_T,oi.remark_S ,wis.order_item
 from WORK_ORDER_ITEMS wis
  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
 left join WORK_ORDER wo on wo.order_key = wis.order_key 
 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
left  join AREA ar on ar.area_key = al.parent_key
 left join SITE_AREA  sa on sa.child_key = ar.area_key
 left join site si on si.site_key = sa.parent_key
  where 1=1 and oi.order_status_I !=10 and  oi.report_flag_I = 20 and oi.order_status_I ='50'


  delete  from  UDA_OrderItem  where  order_status_I = 50

  select  * from   UDA_OrderItem  where  order_status_I = 50



  	  select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_desc_S+':'+oi.operation_name_S)op_step,oi.p_line_key_S,oi.wc_key_I,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,oi.seq_number_I,oi.order_status_I,oi.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I
 			 , (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,(SUBSTRING(CONVERT(nvarchar,oi.close_time_t, 120), 1, 20))close_time_T,oi.remark_S ,wis.order_item
		 from WORK_ORDER_ITEMS wis
			  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
		 left join WORK_ORDER wo on wo.order_key = wis.order_key 
 			 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
			 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
			 left  join AREA ar on ar.area_key = al.parent_key
 			 left join SITE_AREA  sa on sa.child_key = ar.area_key
			 left join site si on si.site_key = sa.parent_key
 			  where 1=1 and oi.order_status_I !=10 and  oi.report_flag_I = 20	and  order_status_I = 50

 



 SELECT  *FROM  UDA_OrderItem  where order_status_I = 50



 select *from   AT_QM_SubQualityProductManage  where  1=1  order  by  creation_time


 


 select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,production_type_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        Evnumber_S,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1


		select *from   UDA_OrderItem


["", "Q-200730011", "1200730001", "PT-1200730002", "A936", "41536", "100", "0", null, null, null, "0", "10", "qushaowei", "2020-07-30 14:43:48", null, null, "42640", null, "8", "3655"];
		
      	select op.op_key,op.op_name,op.description ,pl.p_line_name from  ROUTE_STEP  rs
			left  join  route  r on r.route_key = rs.route_key
			left  join  STEP_UV  su on su.route_step_key = rs.route_step_key
			left  join  operation op on op.op_key = su.op_key
			left join  PRODUCTION_LINE  pl  on pl.p_line_key = su.uda_2		
      
            where 1=1  and  pl.p_line_key = 41536


			select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,operation_key_I ,ap.atr_key from  AT_OM_OrderRouteStep  ap
		 left join  AT_OM_Pallet  ae  on ae.route_step_key_I  = ap.atr_key where  1=1
		 and  ae.pallet_name_S = 'PT-2200730002'



		 
 	select op.op_key,op.op_name,op.description ,pl.p_line_name from  ROUTE_STEP  rs
			left  join  route  r on r.route_key = rs.route_key
			left  join  STEP_UV  su on su.route_step_key = rs.route_step_key
			left  join  operation op on op.op_key = su.op_key
			left join  PRODUCTION_LINE  pl  on pl.p_line_key = su.uda_2		
			where  route_name= 'A936'  and  pl.p_line_key = 6513


			select * from  AT_QM_SubQuality where 1=1  order  by creation_time

			select * from  OPERATION  


			select  * from  AT_QM_EvaluateDoc


			select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,operation_key_I ,ap.atr_key from  AT_OM_OrderRouteStep  ap
		 left join  AT_OM_Pallet  ae  on ae.route_step_key_I  = ap.atr_key where  1=1
		 and ae.pallet_name_S = 'PT-2200730002'

		 select  * from  AT_OM_Pallet  where  pallet_name_S = 'PT-2200730002'

		 select *  from  PART_UV

		 select *from  site


		 select  * from  UDA_OrderItem

		 select *from  WORK_ORDER_ITEMS


		 select  atr_key    from   AT_OM_Orderroute  where   1=1

		 select *from AT_OM_OrderRouteStep  where  1=1  order  by  creation_time



		 select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_desc_S+':'+oi.operation_name_S)op_step,oi.p_line_key_S,oi.wc_key_I,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,oi.seq_number_I,oi.order_status_I,oi.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I
 			 , (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,(SUBSTRING(CONVERT(nvarchar,oi.close_time_t, 120), 1, 20))close_time_T,oi.remark_S ,wis.order_item
		 from WORK_ORDER_ITEMS wis
			  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
		 left join WORK_ORDER wo on wo.order_key = wis.order_key 
 			 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
			 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
			 left  join AREA ar on ar.area_key = al.parent_key
 			 left join SITE_AREA  sa on sa.child_key = ar.area_key
			 left join site si on si.site_key = sa.parent_key
 			  where 1=1 and oi.order_status_I=10 and  oi.report_flag_I = 20	 


			  		 		 select '',wo.order_number, plan_number_S,part_number_S,production_line_f_s,production_line_T_s,power_code_S, cast(plan_qty_F as decimal) plan_qty_F,route_names_S,order_type_I,order_status_I,
(SUBSTRING(CONVERT(nvarchar, plan_start_time_T, 120), 1, 13))plan_start_time_T,
(SUBSTRING(CONVERT(nvarchar,plan_finish_time_T, 120), 1, 13))plan_finish_time_T,cast(actual_qty_F as decimal)actual_qty_F,
(SUBSTRING(CONVERT(nvarchar,actual_start_time_T, 120), 1, 13))actual_start_time_T ,(SUBSTRING(CONVERT(nvarchar, closed_time, 120), 1, 13)) closed_time,cast(workblank_qty_F as decimal)workblank_qty_F,cast(scrap_qty_F as decimal)scrap_qty_F,(SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 19)) creation_time,create_name_S,remark_S ,uda.default_plant_S from   UDA_Order  uda
left  join   WORK_ORDER  wo  on  wo.order_key = uda.object_key


select *from   AT_QM_EvaluateDoc  where  1=1  order by  creation_time


select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,production_type_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        Evnumber_S,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1


		select *from   AT_OM_OrderRouteStep  ap
		where  order_route_key_I = (select  order_route_key_I from   AT_OM_OrderRouteStep where  1=1  and  atr_key = 41907)


					  select  rs.route_step_name,rs.route_step_key,op_name,rs.op_key,su.uda_2,su.uda_1,su.report_flag_I,su.sort_seq_I  ,'10' as Status ,op.description,pw.wc_key from   Operation  op
			 left  join  ROUTE_STEP rs on op.op_key = rs.op_key
			 left  join  route ri  on ri.route_key = rs.route_key
			 left join  step_uv  su on su.route_step_key = rs.route_step_key
			 left  join PRODUCT_RS_DEFAULT_WC  pw on pw.route_step_key = su.route_step_key and pw.route_key = ri.route_key  and  pw.p_line_key = su.uda_2
			 where 1=1 



			 select * from   AT_QM_SubQualityProductManage  where  1=1  order  by creation_time

			 select  * from AT_OM_OrderRouteStep  where  1=1  and  order_route_key_I  = 38651

			 select *  from   AT_OM_OrderRoute  where  1=1  and  plan_number_S = 'RE-200801008'

			 select *  from  AT_OM_OrderRouteStep  where  1=1   and  order_route_key_I = 42736  order  by  orderstep_seq_I



			   select  '',rs.route_step_name,rs.route_step_key,op_name,rs.op_key,su.uda_2,su.uda_1,su.report_flag_I,su.sort_seq_I  ,'10' as Status ,ro.route_name from   Operation  op
			 left  join  ROUTE_STEP rs on op.op_key = rs.op_key
			 left join Route ro on ro.route_key =rs.route_key
			 left  join  route ri  on ri.route_key = rs.route_key
			 left join  step_uv  su on su.route_step_key = rs.route_step_key
			 where 1=1


			 select  route_step_key_I,operation_name_S,operation_desc_S,pline_key_I,wc_key_S,equipmentclass_S,(case when   report_flag_I=20 then '是' else  '否'  end)report_flag_I ,orderstep_seq_I ,route_step_status_I from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where  plan_number_S = 'RE-200801008'
			 order by  orderstep_seq_I


			 	 select  route_step_key_I,operation_name_S,operation_desc_S,pline_key_I,wc_key_S,equipmentclass_S,(case when   report_flag_I=20 then '是' else  '否'  end)report_flag_I ,orderstep_seq_I  , ap.atr_key from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where  plan_number_S = 'RE-200801008'
			 order by  orderstep_seq_I


			
			 	 select operation_name_S,pline_key_I from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where  plan_number_S = 'RE-200801008'
			 order by  orderstep_seq_I


			



		select  * from   WORK_CENTER

		sp_help  work_center

	select  * from  AT_OM_WC_WOI_REL

	select * from  STORAGE_ZONE
	select * from AREA_STORAGE_ZONE_A

	select *from  WORK_CENTER

	select * from WORK_CENTER_STATUS_V

	select  * from WORK_ORDER  where 1=1  order  by creation_time


	  	 select operation_name_S,pline_key_I from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where  plan_number_S = 'RE-200801025'
			 order by  orderstep_seq_I

------工序工单擦看  更改工序工单的数量取值 由原来的对象 改为UDA字段
			  select '' ,itm.plan_number_S,wis.order_item,itm.p_line_key_S ,wis.planned_route,itm.equipment_class_S,aw.wc_key_I ,(itm.operation_desc_S+itm.operation_name_S)operation,itm.order_type_I,wis.part_number,wis.bom_name,wis.bom_revision  ,
			  (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 13))planned_start_time,(SUBSTRING(CONVERT(nvarchar, wis.planned_finish_time, 120), 1, 13))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,itm.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar, itm.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,aw.order_status_I,cast(Wis.quantity_ordered as decimal) quantity_ordered,cast(itm.finished_qty_F as decimal)finished_qty_F,
			  (SUBSTRING(CONVERT(nvarchar, wis.last_modified_time, 120), 1, 19))last_modified_time,itm.created_by_S,itm.created_by_desc_S,(SUBSTRING(CONVERT(nvarchar,Wis.creation_time, 120), 1, 19))creation_time,
			  (SUBSTRING(CONVERT(nvarchar, wis.finished_time, 120), 1, 13))finished_time,itm.remark_S,aw.seq_number_I,itm.report_flag_I,itm.last_report_flag_I,itm.send_pline_key_I,itm.reception_pline_key_I
			  from   UDA_OrderItem itm
			 left join WORK_ORDER_ITEMS Wis on itm.object_key = Wis.order_item_key
			 left join WORK_ORDER Wo on Wo.order_key = Wis.order_key
             left join  AT_OM_WC_WOI_REL  aw on aw.order_item_key_I = wis.order_item_key
			 where 1=1  

			 		
			  select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_desc_S+':'+oi.operation_name_S)op_step,oi.p_line_key_S,oi.wc_key_I,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,oi.seq_number_I,oi.order_status_I,oi.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I
 			 , (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,(SUBSTRING(CONVERT(nvarchar,oi.close_time_t, 120), 1, 20))close_time_T,oi.remark_S ,wis.order_item
		 from WORK_ORDER_ITEMS wis
			  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
		 left join WORK_ORDER wo on wo.order_key = wis.order_key 
 			 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
			 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
			 left  join AREA ar on ar.area_key = al.parent_key
 			 left join SITE_AREA  sa on sa.child_key = ar.area_key
			 left join site si on si.site_key = sa.parent_key
 			  where 1=1 and oi.order_status_I !=10 and  oi.report_flag_I = 20	

			  select *from UDA_OrderItem
			  select  * from  WORK_ORDER  where 1=1  and  order_key = 19645
			 

			  select  order_key_I ,ap.operation_name_S from  AT_OM_Pallet ae
			  left  join   WORK_ORDER  wo  on  wo.order_key = ae.order_key_I
			  left  join   AT_OM_OrderRoute   ar  on  ar.order_number_S = wo.order_number
			  left  join   AT_OM_OrderRouteStep  ap  on  ap.order_route_key_I = ar.atr_key
			  where  1=1 
			  and  ae.order_key_I = 19645


			  select distinct ap.operation_name_S,ap.orderstep_seq_I,ap.pline_key_I from  AT_OM_OrderRouteStep  ap
			  left  join    AT_OM_OrderRoute  ae on ae.atr_key = ap.order_route_key_I
			  left  join  WORK_ORDER  wr  on wr.order_number = ae.order_number_S
			  left join AT_OM_Pallet  al on al.order_key_I = wr.order_key
			  where  1=1 
			  and al.order_key_I = 19645
			  and  ap.pline_key_I = 9505
			  group by  ap.operation_name_S,ap.orderstep_seq_I,ap.pline_key_I
			  order  by  ap.orderstep_seq_I


			  select order_key_I,pallet_name_S,lot_name_S  from  AT_OM_Pallet where   order_key_I = 19645

			  select * from  PRODUCTION_LINE  where  1=1  


			  select  * from  WORK_ORDER  where  1=1
			  and order_key = 19645


			  select  um.pre_route_step_key_I,um.plan_number_S,um.operation_key_I,um.operation_name_S,um.operation_desc_S ,wr.part_number_S,um.p_line_key_S from   AT_OM_pallet  ae
			  left  join  UDA_OrderItem  um on  um.object_key = ae.order_item_key_I
			  left join WORK_ORDER_ITEMS ws on ws.order_item_key = um.object_key
			  left join UDA_Order  wr on wr.object_key = ws.order_key
			  where  ae.pallet_name_S = 'PT-1200717006'


			    select  um.operation_key_I,um.operation_name_S+':'+um.operation_desc_S from   AT_OM_pallet  ae
			  left  join  UDA_OrderItem  um on  um.object_key = ae.order_item_key_I


			  select  pallet_name_S,lot_name_S from  AT_OM_Pallet  where  1=1
			  and  lot_name_S = '1200729002'


			  select  * from  WORK_ORDER 

			  select *from  UDA_Order


			   select  um.pre_route_step_key_I,um.plan_number_S,um.operation_key_I,um.operation_name_S,um.operation_desc_S ,wr.part_number_S,um.p_line_key_S, um.route_step_key_I from   AT_OM_pallet  ae
			  left  join  UDA_OrderItem  um on  um.object_key = ae.order_item_key_I
			  left join WORK_ORDER_ITEMS ws on ws.order_item_key = um.object_key
			  left join UDA_Order  wr on wr.object_key = ws.order_key
			  where 1=1 




			    	  select  a.*  from( select rs.route_step_name,rs.route_step_key,op_name,rs.op_key,su.uda_2,su.uda_1,su.report_flag_I,'10'as last_report,(su.sort_seq_I)sort_sql_I  ,'10' Status ,rs.route_key ,pw.wc_key ,op.description from   Operation  op
			 left  join  ROUTE_STEP rs on op.op_key = rs.op_key
			 left  join  route ri  on ri.route_key = rs.route_key
			 left join  step_uv  su on su.route_step_key = rs.route_step_key
			 left  join PRODUCT_RS_DEFAULT_WC  pw on pw.route_step_key = su.route_step_key and pw.route_key = ri.route_key  and  pw.p_line_key = su.uda_2
			 ) a  where  1=1  and  Status='10'


			 select  *from  ROUTE  where  route_name = 'A936'
			 			  	  select  a.*  from( select rs.route_step_name,rs.route_step_key,op_name,rs.op_key,su.uda_2,su.uda_1,su.report_flag_I,'10'as last_report,(su.sort_seq_I)sort_sql_I  ,'10' Status ,rs.route_key ,pw.wc_key ,op.description from   Operation  op
			 left  join  ROUTE_STEP rs on op.op_key = rs.op_key
			 left  join  route ri  on ri.route_key = rs.route_key
			 left join  step_uv  su on su.route_step_key = rs.route_step_key
			 left  join PRODUCT_RS_DEFAULT_WC  pw on pw.route_step_key = su.route_step_key and pw.route_key = ri.route_key  and  pw.p_line_key = su.uda_2
			 ) a  where  1=1  and  Status='10'  and route_key = 15267


			 select distinct powder_code_S  from   PART_UV


			 select  * from AT_OM_OrderRouteStep  where  1=1 and  order_route_key_I = 43301 order  by  creation_time  desc

			 select  * from AT_OM_OrderRoute  where  1=1 order  by  creation_time  desc


			 	  	  select  a.*  from( select rs.route_step_name,rs.route_step_key,op_name,rs.op_key,su.uda_2,su.uda_1,su.report_flag_I,'10'as last_report,(su.sort_seq_I)sort_sql_I  ,'10' Status ,rs.route_key ,pw.wc_key ,op.description from   Operation  op
			 left  join  ROUTE_STEP rs on op.op_key = rs.op_key
			 left  join  route ri  on ri.route_key = rs.route_key
			 left join  step_uv  su on su.route_step_key = rs.route_step_key
			 left  join PRODUCT_RS_DEFAULT_WC  pw on pw.route_step_key = su.route_step_key and pw.route_key = ri.route_key  and  pw.p_line_key = su.uda_2
			 ) a  where  1=1  and  Status='10'
			    and  route_key = '15267'  order by sort_sql_I  


				select  route_step_key_I,operation_name_S,operation_desc_S,pline_key_I,wc_key_S,equipmentclass_S,(case when   report_flag_I=20 then '是' else  '否'  end)report_flag_I ,orderstep_seq_I  , ap.atr_key from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where  1=1


			select  plan_number_S,ae.atr_key,ap.operation_name_S,ap.orderstep_seq_I from   AT_OM_orderroute ae
			left join  AT_OM_OrderRouteStep  ap on ap.order_route_key_I=  ae.atr_key
			where  plan_number_s = 'MO-200803010'  order by  ap.orderstep_seq_I

			select *  from  WORK_ORDER  where 1=1 order  by creation_time  desc



				  select '' ,itm.plan_number_S,wis.order_item,itm.p_line_key_S ,wis.planned_route,itm.equipment_class_S,itm.wc_key_I ,(itm.operation_desc_S+itm.operation_name_S)operation,itm.order_type_I,wis.part_number,wis.bom_name,wis.bom_revision  ,
			  (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 13))planned_start_time,(SUBSTRING(CONVERT(nvarchar, wis.planned_finish_time, 120), 1, 13))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,itm.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar, itm.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,itm.order_status_I,cast(Wis.quantity_ordered as decimal) quantity_ordered,cast(itm.finished_qty_F as decimal)finished_qty_F,
			  (SUBSTRING(CONVERT(nvarchar, wis.last_modified_time, 120), 1, 19))last_modified_time,itm.created_by_S,itm.created_by_desc_S,(SUBSTRING(CONVERT(nvarchar,Wis.creation_time, 120), 1, 19))creation_time,
			  (SUBSTRING(CONVERT(nvarchar, wis.finished_time, 120), 1, 13))finished_time,itm.remark_S,itm.seq_number_I,itm.report_flag_I,itm.last_report_flag_I,itm.send_pline_key_I,itm.reception_pline_key_I
			  from   UDA_OrderItem itm
			 left join WORK_ORDER_ITEMS Wis on itm.object_key = Wis.order_item_key
			 left join WORK_ORDER Wo on Wo.order_key = Wis.order_key
            
			 where 1=1  



			 		  select '' ,itm.plan_number_S,wis.order_item,itm.p_line_key_S ,wis.planned_route,itm.equipment_class_S,itm.wc_key_I ,(itm.operation_desc_S+itm.operation_name_S)operation,itm.order_type_I,wis.part_number,wis.bom_name,wis.bom_revision  ,
			  (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 13))planned_start_time,(SUBSTRING(CONVERT(nvarchar, wis.planned_finish_time, 120), 1, 13))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,itm.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar, itm.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,itm.order_status_I,cast(Wis.quantity_ordered as decimal) quantity_ordered,cast(itm.finished_qty_F as decimal)finished_qty_F,
			  (SUBSTRING(CONVERT(nvarchar, wis.last_modified_time, 120), 1, 19))last_modified_time,itm.created_by_S,itm.created_by_desc_S,(SUBSTRING(CONVERT(nvarchar,Wis.creation_time, 120), 1, 19))creation_time,
			  (SUBSTRING(CONVERT(nvarchar, wis.finished_time, 120), 1, 13))finished_time,itm.remark_S,itm.seq_number_I,itm.report_flag_I,itm.last_report_flag_I,itm.send_pline_key_I,itm.reception_pline_key_I
			  from   UDA_OrderItem itm
			 left join WORK_ORDER_ITEMS Wis on itm.object_key = Wis.order_item_key
			 left join WORK_ORDER Wo on Wo.order_key = Wis.order_key
            
			 where 1=1 

			 select *from PRODUCTION_LINE

			select route_name_s,order_number_s from AT_OM_OrderRoute  where  1=1


			select  *from   AT_OM_Pallet

			select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,production_type_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        Evnumber_S,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1





		select* from  AT_QM_EvaluateDoc  where 1=1  order by  creation_time

		
		select*from STEP_UV  where  route_step_key = 3655

		select  * from  operation  where  op_key = 3656

		select *from  PRODUCTION_LINE  where  p_line_key = 4289

		select * from AT_OM_Pallet where  pallet_name_S = 'PT-2200731014'


		select dispose_opinion_i  from  AT_QM_EvaluateDoc

		delete   from  AT_QM_EvaluateDoc  where  atr_key = 43667


		select  * from  AT_QM_SubQuality



		select * from  ACCOUNT  ac
                left  join  UDA_Account ua  on ua.object_key = ac.account_key
                where 1=1


			select *from  part_uv

			select  *  from   AT_OM_PartDivide


			select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,operation_key_I ,ap.atr_key,ae.pallet_name_S from  AT_OM_OrderRouteStep  ap
		 left join  AT_OM_Pallet  ae  on ae.route_step_key_I  = ap.atr_key where  1=1  and  pallet_name_S  !=''

		  	 select operation_name_S,pline_key_I from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where   1=1 and  plan_number_S ='RE-200804002'
			 select  * from  ACCOUNT


			 select  uda#3+':'+name from  Account_ims  where 1=1 and  part_no = 'A936'

			 select  * from site


			 select  * from  AT_OM_Pallet

			 select  *from  AT_QM_SubQuality

			 select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,ap.operation_key_I ,ap.atr_key from  AT_OM_OrderRouteStep  ap
		 left join  AT_OM_Pallet  ae  on ae.route_step_key_I  = ap.atr_key where  1=1
		 and  pallet_name_S = 'PT-2200731014'

		 	 select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,ap.operation_key_I ,ap.atr_key from  AT_OM_OrderRouteStep  ap
		 left join  AT_QM_SubQuality  ae  on ae.ors_key_I  = ap.atr_key where  1=1
		 and  pallet_name_S = 'PT-2200731014'



		 select  * from  AT_QM_SubQuality



		select  operator_S,online_technologist_S, qa_engineer_S,tech_engineer_S from    AT_OM_Default_Plant  an
		left  join PART_UV  uv  on uv.default_plant_S = an.factory_name_S
		where  uv.part_number= 'A1580'

		select  * from  PART_UV

		select * from    AT_OM_Default_Plant  an
		left  join PART_UV  uv  on uv.default_plant_S = an.factory_name_S

		select part_number,pqe_S ,default_plant_S from  PART_UV



		select  uv.part_number,uv.default_plant_S from    part_uv  uv
		left join  AT_OM_Default_Plant  an  on an.factory_no_S = 

		
select  operator_S,online_technologist_S from    AT_OM_Default_Plant  an
		left  join PART_UV  uv  on uv.default_plant_S = an.factory_no_S
		where  uv.part_number= 'A936'


		select  * from  PART_UV

		select * from  AT_OM_Default_Plant



			select  uv.part_number,an.operator_S,online_technologist_S, qa_engineer_S,tech_engineer_S,line_leader_S from    PART_UV  uv
		left  join AT_OM_Default_Plant  an  on uv.default_plant_S = an.factory_name_S
		where  uv.part_number= 'A1580'



		select * from    AT_OM_Default_Plant  an
		left  join PART_UV  uv  on uv.default_plant_S = an.factory_name_S

		select * from  PART_UV
		 where  1=1 and part_number = 'A936'


		select  uv.part_number,uv.default_plant_S ,an.factory_no_S ,factory_no_S,online_technologist_S, qa_engineer_S,tech_engineer_S,line_leader_S   from   AT_OM_Default_Plant an
		left join   part_uv  uv on an.factory_no_S = factory_no_S
		where 1=1 
		
		order by  part_number


		select line_leader_S,uv.part_number,an.factory_no_S,factory_no_S ,an.factory_name_S  from   AT_OM_Default_Plant an
		left join   part_uv  uv on an.factory_no_S = factory_no_S
		where 1=1 
		
		order by  part_number

		select  * from  part_uv
		select * from AT_OM_Default_Plant


				select factory_name_S  from   AT_OM_Default_Plant  uv  
		where  1=1 and factory_no_S =   (select  default_plant_S from  PART_UV  where  1=1  and part_number = 'A1588')


		delete  from  AT_QM_SubQuality
		delete from  AT_QM_SubQualityProductManage
		delete from  AT_QM_EvaluateDoc

		select  *from  AT_OM_Pallet

		select  rejects_number_S,pallet_name_S ,part_number_S, ors_key_I,qty_I,scrap_qty_I,operation_key_I,status_I   created_by_S,creation_time,new_pallet_name_S
		from   AT_QM_SubQuality


		select  * from  AT_QM_SubQuality


		select  * From WORK_ORDER_ITEMS


		select  '',lot_name_S,pallet_name_S,part_number_S,operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
		created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S,wc_key_i from  AT_QM_SubQuality  where  1=1  order  by  creation_time

		update  AT_QM_SubQuality  set wc_key_I = 21590 where  wc_key_I = 2152

		select  *from   AT_QM_SubQuality  where  1=1 

		select  order_key_I ,order_item_key_I  from  AT_OM_Pallet  
	
	select * from  UDA_OrderItem

	select *  from  AT_QM_SubQuality


	select  um.pre_route_step_key_I,um.plan_number_S,um.operation_key_I,um.operation_name_S,um.operation_desc_S ,wr.part_number_S,um.p_line_key_S, um.route_step_key_I,ae.wc_key_I from   AT_OM_pallet  ae
			  left  join  UDA_OrderItem  um on  um.object_key = ae.order_item_key_I
			  left join WORK_ORDER_ITEMS ws on ws.order_item_key = um.object_key
			  left join UDA_Order  wr on wr.object_key = ws.order_key
			  where 1=1 

			  select * from  work_Center


			  select wc_key, wc_name,description from  WOrk_center  where  1=1  

			  2015


			  select  * from  AT_OM_Pallet  where  1=1  and  wc_key_I = 21590


				  select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
			(SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
			Evnumber_S,row_number() over (order by creation_time) as seq ,operation_key_i,route_step_key_I from   AT_QM_SubQuality   where 1=1
			and  pallet_name_S = 'PT-1200806009'


			select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,ae.operation_key_I ,ap.atr_key from  AT_OM_OrderRouteStep  ap
		 left join  AT_QM_SubQuality  ae  on ae.ors_key_I  = ap.atr_key where  1=1


		 select ors_key_I,route_step_key_I from  AT_QM_SubQuality  where pallet_name_S = 'PT-1200807007'


		 select  

		 select  * from  AT_OM_OrderRouteStep ap
		 left  join  AT_OM_OrderRoute  ae  on ae.atr_key = ap.order_route_key_I
		 where  1=1
		 and  order_number_S = ''


		 select  * from   AT_QM_SubQualityProductManage
		 select  *from   AT_QM_EvaluateDoc

		 select plan_number_S,order_status_I,seq_number_I,(case order_status_I  when  30 then   1  end)newseq from  UDA_OrderItem 
		 where   order_Status_I = 30  or  order_Status_I = 20  or  order_Status_I = 40   and  seq_number_I !=''
		 order  by newseq, seq_number_I



		 
		 select plan_number_S,order_status_I,seq_number_I,(case order_status_I  when  30 then   0 else 1 end)newseq from  UDA_OrderItem    where   order_Status_I = 30  or  order_Status_I = 20  or  order_Status_I = 40   
		 order  by newseq, seq_number_I


		 select   pallet_name_S from   AT_QM_SubQuality  where  1=1
		  and  pallet_name_S = 'PT-1200807002'
		 order  By creation_time


		 select  '',lot_name_S,pallet_name_S,part_number_S,operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
		created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S from  AT_QM_SubQuality  where  1=1

		select  pallet_name_S,lot_name_S,part_number_S,order_key_I,order_item_key_I,wc_key_I from  AT_OM_Pallet  where  order_key_I  =22703

		select * from UDA_orderItem

		select  * from WORK_ORDER  where  order_key = 22703


		 select  um.pre_route_step_key_I,um.plan_number_S,um.operation_key_I,um.operation_name_S,um.operation_desc_S ,wr.part_number_S,um.p_line_key_S, um.route_step_key_I,ae.wc_key_I,lot_name_S from   AT_OM_pallet  ae
			  left  join  UDA_OrderItem  um on  um.object_key = ae.order_item_key_I
			  left join WORK_ORDER_ITEMS ws on ws.order_item_key = um.object_key
			  left join UDA_Order  wr on wr.object_key = ws.order_key
			  where 1=1 


		   select  ap.operation_key_I,ap.operation_name_S,ap.operation_desc_S  from  AT_OM_OrderRouteStep  ap
		   left  join  AT_OM_OrderRoute ae on ae.atr_key = ap.order_route_key_I  
		   where  ae.order_number_S = 'MO-200719001'  and  ap.pline_key_I = 6513
		   order by ap.orderstep_seq_I


		   select  * from AT_OM_OrderRouteStep
		   

		   select  * from   AT_QM_SubQuality  where  1=1  and pallet_name_S = 'PT-1200807008'
		   order by  creation_time


		   update  AT_QM_SubQuality  set scrap_qty_I = 10  where pallet_name_S = 'PT-1200807008'

		   select  * from  AT_QM_SubQualityProductManage

		   update  AT_QM_SubQualityProductManage  set  pallet_name_S = 'PT-1200807008'  where  atr_key = 46826



		   select '',  pallet_name_S,ors_key_I, defect_key_I,qty_I,reason_s,ae.created_by_S,(SUBSTRING(CONVERT(nvarchar,create_T_T, 120), 1, 20))create_T_T,ap.operation_name_S from  AT_QM_SubQualityProductManage   ae
left  join AT_OM_OrderRouteStep  ap  on ap.atr_key = ae.ors_key_I  where 1= 1

update   AT_QM_SubQualityProductManage   set  defect_key_I =  33351  where  defect_key_I = 10

select  * from  AT_QM_DefectType 

SELECT  * FROM  AT_QM_SubQualityProductManage

select '',  pallet_name_S,ors_key_I, defect_key_I,qty_I,reason_s,ae.created_by_S,(SUBSTRING(CONVERT(nvarchar,ae.creation_time_u, 120), 1, 20))create_T_T,ap.operation_name_S from  AT_QM_SubQualityProductManage   ae
left  join AT_OM_OrderRouteStep  ap  on ap.atr_key = ae.ors_key_I  where 1= 1



select  EvNumber_S from  AT_QM_SubQuality  where  1=1

select  * from  AT_QM_SubQuality 


delete  from AT_QM_SubQuality
delete  from  AT_QM_EvaluateDoc


select  * from AT_OM_Pallet  where  wc_key_i = 4845



select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_S,row_number() over (order by creation_time) as seq  from   AT_QM_SubQuality   where 1=1 


		select * from WORK_ORDER



		select  * from  AT_QM_SubQuality

		update AT_QM_EvaluateDoc set  dispose_opinion_I  = 40  where  dispose_opinion_I = 20

		update AT_QM_SubQuality set  reason_S = '40'  where reason_S = '20'

		select *  from  AT_OM_Pallet  where pallet_name_S ='PT-1200717004'


		select  * from UDA_OrderItem where 1=1  order  by  last_modified_time


		select  operation_name_S from  AT_OM_OrderRouteStep  where  order_route_key_I  = 42750 order  by orderstep_seq_I

		select  GROUP_CONCAT（）

		
select name,

       string_agg(operation_name_S,',') as vv

from AT_OM_OrderRouteStep v

group by name


select order_route_key_I, [value] = stuff((select ',' + operation_name_S from AT_OM_OrderRouteStep t where order_route_key_I = AT_OM_OrderRouteStep.order_route_key_I order by orderstep_seq_I for xml path('')) , 1 , 1 , '')
from AT_OM_OrderRouteStep  where   order_route_key_I = 42750
group by order_route_key_I



select order_route_key_I, [value] = stuff((select ',' + operation_name_S from AT_OM_OrderRouteStep t where order_route_key_I = AT_OM_OrderRouteStep.order_route_key_I order by orderstep_seq_I for xml path('')) , 1 , 1 , '')
from AT_OM_OrderRouteStep  where 1=1
group by order_route_key_I

select * from  AT_QM_EvaluateDoc  where 1=1  order  by creation_time


select  *from  Work_Order_Items

select *from USER_UV



select  last_opname_S,count(last_opname_S)列名 from  AT_OM_OrderRouteStep where 1=1  group by  last_opname_S order by orderstep_seq_I


select ,count(1) as RegNums from User group by convert(varchar(7),RegTime,120) order by convert(varchar(7),RegTime,120) asc

select  last_opname_S as CoundDate, count(last_opname_S) as RegNums, count(last_opname_S)from  AT_OM_OrderRouteStep where 1=1  group by  last_opname_S


select  last_opname_S as CoundDate, count(last_opname_S) as RegNums, 1 from  AT_OM_OrderRouteStep where 1=1  group by  last_opname_S   order by orderstep_seq_I


select operation_name_S,ap.pline_key_I,ap.order_route_key_I,ae.pallet_name_S,ap.operation_key_I ,ap.atr_key from  AT_OM_OrderRouteStep  ap
		 left join  AT_QM_SubQuality  ae  on ae.ors_key_i  = ap.atr_key where  1=1  and 
		 ae.pallet_name_S  = 'PT-1200807009'


	select operation_name_S  from  AT_OM_OrderRouteStep ap
		 left join  AT_OM_OrderRoute  ae on ap.order_route_key_I = ae.atr_key
		 left join  WORK_ORDER  wo  on wo.order_number = ae.order_number_S
		 left  join  AT_QM_SubQuality  al  on al.order_key_I = wo.order_key  where 1=1
		 and  al.pallet_name_S = 'PT-1200807009'

		 select  * from  AT_OM_Pallet


		 select *from  AT_QM_SubQuality  where  1= 1 order  by creation_time


		 select  '',lot_name_S,pallet_name_S,part_number_S,operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
		created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S,ev_number_S,
		deal_opinion_S,deal_status_S,adjust_status_I from  AT_QM_SubQuality  where  1=1


		select  * from  AT_QM_EvaluateDoc where  1= 1  order  by  creation_time

		select  *  from  AT_QM_SubQuality where  1=1  order  by  creation_time

		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1


		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1


		delete  from AT_QM_SubQuality
		delete   from   AT_QM_SubQualityProductManage
		delete  from  AT_QM_EvaluateDoc


	select  *from  AT_QM_SubQuality  where  1=1  order  by creation_time 

		


 select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,deal_status_S,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i ,status_I from   AT_QM_SubQuality   where 1=1 order  by  creation_time



		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1  and  status_I != 10




		select top ('"+ rowEnd +"'+0) * from (select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality  where  1=1 and  status_I != 10 ) as a

		select  * from  AT_QM_SubQuality

		select * from  AT_QM_EvaluateDoc  
		update  AT_QM_EvaluateDoc  set  review_status_I = 30    where review_status_I = 40

		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20


			 select  * from  AT_OM_Pallet


			  select top ('50'+0) * from ( 		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) 
		
		as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20 and Status_I = '20') a order by  seq  

		select * from AT_QM_EvaluateDoc   

		update  AT_QM_EvaluateDoc  set process_status_I = 40  where  process_status_I = 20


				select  '',lot_name_S,pallet_name_S,part_number_S,operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
		created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S,ev_number_S,
		deal_opinion_S,deal_status_S,adjust_status_I,wc_key_I from  AT_QM_SubQuality  where  1=1  and  status_i !=50 and status_I !=20  order by  creation_time  


		select  * from  site

	select *  from  AT_OM_Pallet where  wc_key_I = 4845

	select *from  AT_QM_EvaluateDoc  where  1=1  order  by  creation_time

	select *from  AT_QM_SUBQUALITY where  1=1  order  by  creation_time


	select   * from   AT_QM_SubQualityProductManage

	select '',  pallet_name_S,ors_key_I, defect_key_I,qty_I,reason_s,ae.created_by_desc_S,(SUBSTRING(CONVERT(nvarchar,ae.creation_time_u, 120), 1, 20))create_T_T,ap.operation_name_S from  AT_QM_SubQualityProductManage   ae
left  join AT_OM_OrderRouteStep  ap  on ap.atr_key = ae.ors_key_I  where 1= 1


select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20 and Status_I = '40'
		or  Status_I = '30'order by  creation_time 


		select *from  AT_OM_Pallet

				select order_key_I ,order_item_key_I from  AT_OM_Pallet

select   route_step_key_I,operation_key_I,p_line_key_S,object_key , wc_key_I from   UDA_orderItem  um 
left join  WORK_ORDER_ITEMS  ws  on um.object_key = ws.order_item_key
where 1=1  and  order_key =22703
and  p_line_key_S = 6513  


select ar.atr_key from  AT_OM_Pallet  ae
left  join WORK_ORDER wr  on  wr.order_key = ae.order_key_I
left  join  AT_OM_OrderRoute ar on ar.order_number_S = wr.order_number
where  pallet_name_S = 'PT-2200724003'


select  * from AT_OM_OrderRouteStep  where  1=1  and  order_route_key_I = 41755

select  pline_key_I,pline_name_S  from AT_OM_OrderRouteStep  where 1=1  

select ar.atr_key from  AT_OM_Pallet  ae
                left  join WORK_ORDER wr  on  wr.order_key = ae.order_key_I
                left  join  AT_OM_OrderRoute ar on ar.order_number_S = wr.order_number  where 1=1   and  ae.pallet_name_S = 'PT-2200715004' 

select  * from  AT_OM_Pallet  where  1=1  and  pallet_name_S = 'PT-2200715004' 

select  * from  AT_OM_Pallet  where  1= 1  order by  

select * from  WORK_ORDER_ITEMS where  order_item_key = 22494
select  * from  WORK_ORDER where  order_key = 22492

select  * from  AT_QM_SubQuality  where  1=1  order  by creation_time


select  pline_key_I,pline_name_S  from AT_OM_OrderRouteStep  where 1=1  and  order_route_key_I =	41755


select ar.atr_key from  AT_OM_Pallet  ae
                left  join WORK_ORDER wr  on  wr.order_key = ae.order_key_I
                left  join  AT_OM_OrderRoute ar on ar.order_number_S = wr.order_number  where 1=1  and  pallet_name_S = 'PT-1200811003'

				select  operation_key_I,operation_name_S from AT_OM_OrderRouteStep  where 1=1  and  order_route_key_I = 41755  and  pline_key_I = 9505


				select  um.wc_key_I from UDA_OrderItem  um
				left  join AT_OM_Pallet  ae  on ae.order_item_key_I = um.object_key
				where  1= 1
				and  ae.pallet_name_S  = 'PT-1200811003'

				select *from  AT_OM_Pallet where  pallet_name_S  = 'PT-1200811003'

				select  wc_key_S from AT_OM_OrderRouteStep  where 1=1

				select  wc_key_S,operation_key_I  from  AT_OM_OrderRouteStep  where  1=1 and  order_route_key_I = 41755

				select wc_key_I,operation_key_I,p_line_key_S from  UDA_OrderItem  um
				left join  WORK_ORDER_ITEMS ws on ws.order_item_key = um.object_key
				where ws.order_key = 22703
			    and  operation_key_I = 3655


				
				
				
				where  operation_key_I = 3654

				select  order_item_key_I from AT_OM_Pallet   where 1=1


				select  *from  AT_OM_Pallet


		 select operation_name_S,pline_key_I ,plan_number_S  from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where   1=1   and ae.plan_number_S = 'MO-200811012' order by  ap.

			select  * from  AT_QM_SubQuality 



			select   * from   WORK_ORDER  where  1=1  order  by  creation_time

			delete from WORK_ORDER  where  order_key = 15271

           	delete from WORK_ORDER  where  order_key = 15262


		select  pall,adjust_status_I from  AT_QM_SubQuality

		select   pallet_name_S, case adjust_status_I when '' then 0 end from AT_QM_SubQuality

				select   pallet_name_S, (case   when adjust_status_I is null then 01  else adjust_status_I end)adjust_status_I from AT_QM_SubQuality、

			select route_step_key_I ,next_step_key_I,operation_name_S ,report_flag_I  from  UDA_OrderItem  where  plan_number_S = 'MO-200719011'

			select  * from AT_QM_SubQuality

	select  * from AT_OM_Pallet where  pallet_type_I = 20
	update  AT_OM_pallet set  pallet_type_I = 10  where  pallet_type_I = 20


	select  order_key_I ,order_item_key_I from  AT_OM_Pallet where  1=1
	and  pallet_name_S = 'PT-2200812017' 


	select  * from  WORK_ORDER  where  order_key = 22703


	select  pallet_name_S,quantity_init_F,pallet_type_I from  AT_OM_Pallet  where  1=1  and  pallet_name_S = 'PT-2200805031'
	order  by creation_time

	update  AT_OM_Pallet set  pallet_type_I = 20  where atr_key = 47232

	select  * from  AT_QM_SubQuality  where  1=1  order  by  creation_time

	update  AT_QM_SubQuality  set status_I = 10  where   status_I =20
	

	select qty_I ,atr_key from  AT_QM_SubQuality where 1=1


	select  pallet_name_S,pallet_status_I,pallet_type_I,quantity_init_F,wc_key_I 
	from AT_OM_Pallet where pallet_type_I = 20 and pallet_status_I = 10  and wc_key_I = '4845'  order  by last_modified_time


	 select  pallet_name_S,quantity_init_F from  AT_OM_Pallet  where  1=1  and  pallet_type_I =20 and  pallet_type_I =10  and  wc_key_I = '4845' 

	select  * from work_center where  wc_key = 4845
	
	update AT_OM_Pallet  set pallet_type_I =10 where  quantity_init_F is null

	select *from  AT_OM_Pallet  where  1=1  and  quantity_finished_F is null

	update AT_OM_Pallet  set pallet_status_I =10 where  wc_key_I = 4845



	select  atr_key,pallet_name_S,pallet_status_I,pallet_type_I from AT_OM_Pallet where  1=1

	select  * from  AT_QM_SubQualityProductManage
	select  pallet_name_S,pallet_type_I,pallet_status_I,quantity_init_F ,order_key_I from  AT_OM_Pallet  where  pallet_name_S = 'PT-1200813042'

	select  * from  work_order where 1=1  and   order_key = 12139
	select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i
		from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20   order by last_modified_time









		select  operation_name_S,p_line_key_S,wc_key_I,case  when report_flag_I = 20 then '是' else  '' end 报工点,order_status_I  
		from  UDA_OrderItem  where plan_number_S = 'MO-200811012' order by  orderstep_seq_I



		select *  from  WORK_CENTER where  wc_key = 4845

		select *from  site  


		select  * from   AT_OM_Pallet  where  1=1  order  by creation_time



		select  MAX(seq_number_I) from  UDA_orderitem where  1=1    and  order_status_I = 20

		select seq_number_I,order_status_I from  UDA_orderitem where  1=1   and   wc_key_I = 2011  and  order_status_I !=50

		select  * from WORK_CENTER  where  1=1  and  wc_name = 'CP302-A03'


	select  * from AT_QM_SubQuality  where  pallet_name_S = 'PT-1200814018'

	select *from  

	select  * from  part  where  part_number = 'A936'

	select * from  OPERATION  where  op_key = 3654



	select  quantity_finished_F  from AT_OM_Pallet where 1=1 and   pallet_name_S = 'PT-1200814023'


	select  * from  UDA_OrderItem  where object_key = 12430

	select * from APP_USER;



	select  * from AT_OM_orderroute  where 1=1  order  by  creation_time

	 select  route_step_key_I,operation_name_S,operation_desc_S,pline_key_I,wc_key_S,equipmentclass_S,(case when   report_flag_I=20 then '是' else  '否'  end)report_flag_I ,orderstep_seq_I  , ap.atr_key from   AT_OM_OrderRouteStep  ap
			 left  join  AT_OM_OrderRoute  ae  on  ae.atr_key = ap.order_route_key_I
			 where  1=1
			 and  plan_number_S = 'RW-200815006'

			 select  

	update AT_OM_OrderRouteStep  set wc_key_S = 0  where  atr_key = 44343


	select  * from  AT_QM_SubQuality  where  1=1  order  by  last_modified_time

		select   from  AT_QM_SubQuality  where  1=1  order  by  last_modified_time


	select  * from  AT_QM_EvaluateDoc  where  1=1  order  by  last_modified_time;


	select  * from   AT_OM_OrderRouteStep    ae 
	left  join  AT_OM_OrderRoute  ap  on ae.order_route_key_I = ap.atr_key
	where  1=1  and  ap.plan_number_S = 'RW-200815024'


	select ap.pline_key_I,operation_name_S,operation_name_S from  AT_OM_OrderRouteStep ap 
	left  join  AT_OM_OrderRoute  ar  on ar.atr_key = ap.order_route_key_I
	where  ar.plan_number_S = 'RW-200815024' order by  orderstep_seq_I

	select * from WORK_CENTER


				select  * from  AT_QM_SubQuality where  1=1  and pallet_name_S = 'PT-2200731005'  order  by  creation_time

				select  * from Work_Order

				select ap.pline_key_I,ap.atr_key,operation_name_S from  AT_OM_OrderRouteStep ap 
            	left  join  AT_OM_OrderRoute  ar  on ar.atr_key = ap.order_route_key_I
            	where  1=1 and  ar.plan_number_S = 'RW-200817002' order by  orderstep_seq_I

				select ws.quantity_ordered, route_step_key_I,p_line_key_S,pre_route_step_key_I,next_step_key_I,send_pline_key_I,reception_pline_key_I from  UDA_OrderItem  um
				left  join  WORK_ORDER_ITEMS  ws  on ws.order_item_key = um.object_key
				where  
				  plan_number_S = 'RW-200817021'order by  orderstep_seq_I

                 select * from  WORK_ORDER  where   order_number = 'RW-200817021'
				 select  * from  UDA_Order  where  object_key =24097

				 select *from  AT_OM_OrderRouteStep  where  atr_key  = 44566


				 select ue.user_name,ue.depart_name,ue.description,
	   ue.img_key
	   from  UM_Employee ue where 1=1



	   select * from PRODUCTION_LINE

	   select  * from  AT_QM_SubQuality  where  atr_key  = 35585

	   select  *  from  UM_Employee  where  1=1   order by  birthdate desc

	   select description_S,card_number_S from  AT_UM_Employee  order by  description_S

	   delete  from  AT_UM_Employee

	   select  measure_S  from  AT_QM_EvaluateDoc

	   select  route_step_key_I,operation_key_I,operation_desc_S,pline_name_S,pline_key_I,ap.equipmentclass_S,last_opname_S,next_opname_S,report_flag_I,last_flag_I ,ap.orderstep_seq_I ,ap.atr_key ,ap.operation_name_S,ap.wc_key_S from   AT_OM_OrderRouteStep  ap
				 left  join  AT_OM_OrderRoute  ao on  ap.order_route_key_I = ao.atr_key  where 1=1 

				 select  route_step_key_I,operation_key_I,operation_desc_S,pline_name_S,pline_key_I,ap.equipmentclass_S,last_opname_S,next_opname_S,report_flag_I,last_flag_I ,ap.orderstep_seq_I ,ap.atr_key ,ap.operation_name_S,ap.wc_key_S from   AT_OM_OrderRouteStep  ap
				 left  join  AT_OM_OrderRoute  ao on  ap.order_route_key_I = ao.atr_key  where 1=1 and
				  order_number_S = 'RW-200817017'



				  select  '', 
defect_key_I,qty_I,created_by_S,(SUBSTRING(CONVERT(nvarchar,create_T_T, 120), 1, 20))create_T_T,atr_key,rejects_number_S_S
from  AT_QM_SubQualityProductManage where 1=1  and  rejects_number_S_S ='Q-200818050'
order  by  creation_time

				  select *
from  AT_QM_SubQualityProductManage where 1=1  
order  by  creation_time


select  * from  AT_QM_SubQuality  where  1=1 order  by  creation_time

select  um.operation_key_I,um.operation_name_S from  AT_OM_ProductionReport  ar 
left  join  UDA_OrderItem  um on um.object_key = ar.order_item_I
where  1=1  and  pallet_name_S = 'PT-2200818001'


select * from  AT_OM_Pallet  where  1=1 and  pallet_name_S = 'PT-2200818001'


select  atr_key,operation_key_I,operation_name_S,orderstep_seq_I from   AT_OM_OrderRouteStep  
where  1=1  and  order_route_key_I= 35953 and orderstep_seq_I<=100 order  by  orderstep_seq_I

select * from AT_OM_OrderRouteStep


select  '', 
defect_key_I,qty_I,created_by_S,(SUBSTRING(CONVERT(nvarchar,create_T_T, 120), 1, 20))create_T_T,atr_key,reason_S
from  AT_QM_SubQualityProductManage where 1=1

select  load_material_actual_qty_F as 实际上料数量,load_material_qty_F as  剩余上料数量 from   AT_OM_LoadMaterial  where  pallet_name_S ='PT-2200818002'---上料表

select  quantity_finished_F,quantity_scrapped_F  from   AT_OM_Pallet  where pallet_name_S ='PT-2200818002'  -- 托盘表

  select  *  from   AT_OM_Pallet  where pallet_name_S ='PT-2200818002' 

  update  AT_OM_LoadMaterial set load_material_qty_F = 20 where pallet_name_S ='PT-2200818002'

  select  * from  AT_QM_DefectType
  select *from AT_QM_DT_OP_REL

  select wc_key_I,operation_key_I, * from AT_QM_SubQuality

  select * from  WORK_CENTER where  wc_key = 4845

  select *from  AT_QM_SubQuality  where  1=1 

  select  happen_step_key_I,* from  AT_QM_SubQuality  where  1=1  and happen_step_key_I = '3655'

  select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i,happen_step_key_I from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20


		select op_key,op_name from  OPERATION  where 1=1

		select *from  AT_QM_EvaluateDoc  where  1=1  order  by creation_time

		select *from  AT_QM_SubQuality  where  1=1  order  by last_modified_time、


		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i,happen_step_key_I,problem_level_I from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20


		select  *from  AT_QM_SubQuality  where  1=1  and  rejects_number_S = 'Q-200818125'

		update  AT_QM_SubQuality  set problem_level_I = 10 where  rejects_number_S = 'Q-200818125';


		select part_number_S,lot_name_S,equipment_S,order_item_desc_S,order_desc_S,wc_key_I,wc_key_I,wc_key_desc_S,
		route_step_key_I,route_step_desc_S,next_order_rs_key_I from AT_OM_Pallet where 1=1  order by  creation_time


		select  *from  AT_OM_Pallet where 1=1  order by  creation_time

		select  wc_key_I,wc_key_desc_S,pallet_status_I,equipment_S,quantity_scrapped_F,last_modified_by_S,last_modified_by_S,
		product_car_code_S,whether_print_I,bom_name_S,route_step_key_I,route_step_desc_S,next_order_rs_key_I  from  AT_OM_pallet
		where  1=1 order by  creation_time


		select *from  AT_QM_EvaluateDoc


		select * from  WORK_ORDER where  1=1  and  order_key = 15499

		select  * from  UDA_Order where 1=1  and  object_key = 15499

		select  * from  AT_OM_PlanManager  where  1=1  order by  plan_import_t_T

		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i,happen_step_key_I,
		problem_level_I,remark_S from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20


		select*from  AT_QM_SubQualityProductManage  where  1=1  order  by  creation_time


		select  * from  OPERATION  where  op_key = 3654


		select  '',lot_name_S,pallet_name_S,part_number_S,operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
		created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S,ev_number_S,
		deal_opinion_S,(case   when adjust_status_I is null then 1  else adjust_status_I end)adjust_status_I,rejects_number_S from  AT_QM_SubQuality  where  1=1


	


		update  AT_OM_Pallet  set  pallet_status_I = 10  where  pallet_name_S = 'PT-1200813042'

		select  *  from  AT_QM_SubQuality  where  atr_key  = 41279


		select  pallet_status_I from  AT_OM_Pallet  where  pallet_name_S = 'PT-1200814024'

		

		
	select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i,happen_step_key_I,problem_level_I,remark_S from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20
		
	
select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,operation_key_i,happen_step_key_I,problem_level_I,remark_S from   AT_QM_SubQuality   where 1=1  and  status_I != 10 and  status_I != 20

		select  '',lot_name_S,pallet_name_S,part_number_S,operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
		created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S,ev_number_S,
		deal_opinion_S,(case   when adjust_status_I is null then 1  else adjust_status_I end)adjust_status_I,rejects_number_S,reason_S
		from  AT_QM_SubQuality  where  1=1  order  by  last_modified_time
		;

		select  * from  AT_OM_Pallet where  1=1 and pallet_name_S = 'PT-1200820003'

		select  * from  AT_OM_Pallet  where  1=1  and  pallet_name_S ='PT-1200820012'


		 select  um.pre_route_step_key_I,um.plan_number_S,um.operation_key_I,um.operation_name_S,um.operation_desc_S ,wr.part_number_S,um.p_line_key_S, um.route_step_key_I,ae.wc_key_I,lot_name_S from   AT_OM_pallet  ae
			  left  join  UDA_OrderItem  um on  um.object_key = ae.order_item_key_I
			  left join WORK_ORDER_ITEMS ws on ws.order_item_key = um.object_key
			  left join UDA_Order  wr on wr.object_key = ws.order_key
			  where 1=1   and  pallet_name_S ='PT-1200820012'


			  select   * from   work_center  where  wc_key  = 4848

			  select  * from  PRODUCTION_LINE  where  1=1  and  p_line_key = 9505

			  select  * from  AT_OM_Pallet where  1=1  and  pallet_name_S ='PT-1200820012'


			  select  ay.pallet_name_S,ay.wc_key_I,ap.pline_key_I from  AT_QM_SubQuality  ay
			  left  join  AT_OM_OrderRouteStep ap on ap.atr_key = ay.ors_key_I

			  where  ors_key_I = 32209


			  		  select  ay.pallet_name_S,ay.wc_key_I,um.p_line_key_S,um.wc_key_I from  AT_QM_SubQuality  ay
					  left  join  UDA_OrderItem um on um.route_step_key_I = ay.ors_key_I
			          where  ay.pallet_name_S = 'PT-1200820002'


		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,ay.created_by_S,
        (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,ay.operation_key_i,happen_step_key_I,problem_level_I,ay.remark_S,um.p_line_key_S,um.wc_key_I from   AT_QM_SubQuality  ay
		left  join  UDA_OrderItem um on um.route_step_key_I = ay.ors_key_I
		where 1=1  and  status_I != 10 and  status_I != 20
		and  um.wc_key_I = 2022


		select  '',lot_name_S,pallet_name_S,part_number_S,ay.operation_key_I,qty_I,scrap_qty_I,status_I,data_source_S,
 		ay.created_by_desc_S,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 19))creation_time,last_modified_by_desc_S,
		(SUBSTRING(CONVERT(nvarchar, ay.last_modified_time, 120), 1, 19))last_modified_time,atr_key,new_pallet_name_S,ev_number_S,
 		deal_opinion_S,(case   when adjust_status_I is null then 1  else adjust_status_I end)adjust_status_I,rejects_number_S,reason_S,um.p_line_key_S,um.wc_key_I from  AT_QM_SubQuality  ay
		left  join  UDA_OrderItem um on um.route_step_key_I = ay.ors_key_I
		where 1=1  and  status_I != 10 and  status_I != 20

		select  * from  UDA_OrderItem  where  1=1  order by  last_modified_time

		select  * from  AT_OM_orderroute  where  1=1 order  by creation_time

		select  * from  AT_OM_OrderRouteStep  where 1=1  order  by  creation_time  

		delete  from   AT_OM_orderroute  where  order_number_S is  null

		delete  from  AT_OM_OrderRouteStep  where order_route_key_I =38701



		select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,ay.created_by_S,         (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,ay.operation_key_i,happen_step_key_I,problem_level_I,ay.remark_S from   AT_QM_SubQuality  ay
		left  join  UDA_OrderItem um on um.route_step_key_I = ay.ors_key_I
		where 1=1  and  status_I != 10 and  status_I != 20


where 1=1  and  status_I != 10 and  status_I != 20;

select  '' as seq1,rejects_number_S,lot_name_s,pallet_name_S,part_number_S,ors_key_I,qty_I,scrap_qty_I,reason_S,deal_opinion_S,status_I,adjust_status_I,data_source_S,ay.created_by_S,         (SUBSTRING(CONVERT(nvarchar,creation_time, 120), 1, 20))create_t_T,last_modified_by_desc_S,(SUBSTRING(CONVERT(nvarchar,last_modified_t_T, 120), 1, 20))last_modified_t_T,atr_key ,
        ev_number_s,row_number() over (order by creation_time) as seq ,ay.operation_key_i,happen_step_key_I,problem_level_I,ay.remark_S from   AT_QM_SubQuality  ay
		left  join  UDA_OrderItem um on um.route_step_key_I = ay.ors_key_I
		where 1=1  and  status_I != 10 and  status_I != 20


		select  * from  AT_OM_PackTray

		select *from  AT_OM_tray
		select  * from  AT_OM_PackTray
		select pa.pallet_name_S,pr.print_count_I,CONVERT(varchar(100),pa.creation_time, 120),pa.created_by_S,CONVERT(varchar(100),pr.print_time_T, 120),pr.last_modified_by_S
      from  AT_OM_PrePallet pa inner join AT_PR_PrintRecords pr on pa.pallet_name_S = prid_S where 1=1 and pa.pallet_category_I = 10

			select  part_number_S,lot_name_S,tray_id_S,case_count_I,weight_F,actual_qty_S,wc_key_I,is_full_I,create_type_I,operator_S,
			CONVERT(varchar(100),print_time_T, 120)print_time_T,is_reported_I,created_by_S,created_by_desc_S,last_modified_by_S,last_modified_by_desc_S
			from  AT_OM_PackTray  where 1=1

			select  * from  AT_T_printPallet


			 select pa.pallet_name_S,pr.print_count_I,CONVERT(varchar(100),pa.creation_time, 120),pa.created_by_S,CONVERT(varchar(100),pr.print_time_T, 120),pr.last_modified_by_S
      from  AT_OM_PrePallet pa inner join AT_PR_PrintRecords pr on pa.pallet_name_S = pr.id_S where 1=1 and pa.pallet_category_I = 10



	  select  qty_per_case_F from  AT_OM_PackTechnology where  1=1  and  part_number_S = 'A936'

	  	  select  * from  AT_OM_PackTechnology where  1=1  and  part_number_S = 'A936'


		  select  pallet_name_S,lot_name_S,wc_key_I,part_number_S from  AT_OM_Pallet where 1=1 


			  select  part_number_S,lot_name_S,tray_id_S,actual_qty_S,create_type_I,operator_S,
			CONVERT(varchar(100),print_time_T, 120)print_time_T
			from  AT_OM_PackTray  where 1=1  order  by  print_time_T


	select  part_number_S,lot_name_S,tray_id_S,case_count_I,weight_F,actual_qty_S,wc_key_I,sum(is_full_I),create_type_I,operator_S,
			CONVERT(varchar(100),print_time_T, 120)print_time_T,is_reprinted_I,created_by_S,created_by_desc_S,last_modified_by_S,last_modified_by_desc_S,atr_key
			from  AT_OM_PackTray  where 1=1  group by part_number_S,lot_name_S,tray_id_S,case_count_I,weight_F,sum(actual_qty_S),wc_key_I,is_full_I,create_type_I,operator_S,
			print_time_T,is_reprinted_I,created_by_S,created_by_desc_S,last_modified_by_S,last_modified_by_desc_S order  by  creation_time


				select  part_number_S,lot_name_S,tray_id_S,case_count_I,weight_F,actual_qty_S,wc_key_I,is_full_I,create_type_I,operator_S,
			CONVERT(varchar(100),print_time_T, 120)print_time_T,is_reprinted_I,created_by_S,created_by_desc_S,last_modified_by_S,last_modified_by_desc_S,atr_key
			from  AT_OM_PackTray  where 1=1 

			select  *  from  AT_OM_PackTechnology

			select  * from IM_ImportPlan   where  1=1 order by  plan_key

			select *from  AT_IM_ImportPlan

			delete  from  AT_IM_ImportPlan


			SELECT part_number_S, pallet_name_S FROM AT_OM_Pallet



			select part_number_S,sum(plan_qty_F) from  AT_OM_PlanManager  where 1=1 group by  part_number_s


			select  * from AT_OM_StoreRecordDetail

			select   atr_key,store_name_S,lot_name_S,pallet_name_S,part_number_S,wc_key_I,
			equipment_S,qty_F,status_I,created_by_S,creation_time,last_modified_by_desc_S,last_modified_time 
			from AT_OM_StoreRecordDetail  where  1=1  order  by  creation_time


			FROM AT_OM_StoreRecordDetail os
LEFT JOIN WORK_CENTER wc ON os.wc_key_I= wc.wc_key 
left JOIN EQUIPMENT eq on os.equipment_S=eq.equip_name 



		select  '', lot_name_S,sum(qty_F)qty_F
			from AT_OM_StoreRecordDetail  where  1=1  group by lot_name_S   order  by  lot_name_S


		   select   part_number_S,sum(qty_F)qty_F
			from AT_OM_StoreRecordDetail  where  1=1  group by part_number_S   order  by  part_number_S




SELECT DISTINCT os.atr_key,'',os.store_name_S+':'+sz.description,os.lot_name_S ,os.pallet_name_S,os.part_number_S,wc.wc_name+':'+wc.description,eq.description,CAST(os.qty_F as bigint),os.status_I,os.created_by_desc_S,Convert(VARCHAR(100), os.creation_time, 20),os.last_modified_by_desc_S,Convert(VARCHAR(100), os.last_modified_time, 20)
FROM AT_OM_StoreRecordDetail os 
LEFT JOIN WORK_CENTER wc ON os.wc_key_I= wc.wc_key 
left join STORAGE_ZONE sz on sz.storage_zone_name = os.store_name_S
left JOIN EQUIPMENT eq on os.equipment_S=eq.equip_name 
where 1=1 and os.status_i =10  order by Convert(VARCHAR(100), os.creation_time, 20) desc offset 0 rows fetch next 200 rows only



select  * from  AT_OM_StoreRecordDetail

select a.storage_zone_name,a.description from STORAGE_ZONE a 

select   (os.store_name_S+':'+sz.description)store_name,sum(qty_F)qty_F
			from AT_OM_StoreRecordDetail  os
			left join STORAGE_ZONE sz on sz.storage_zone_name = os.store_name_S
			
			where  1=1  group by os.store_name_S+':'+sz.description  order  by  store_name
		

select   (os.store_name_S+':'+sz.description)store_name,sum(qty_F)qty_F
from AT_OM_StoreRecordDetail  os
left join STORAGE_ZONE sz on sz.storage_zone_name = os.store_name_S

where  1=1  and os.store_name_S like '%11%'   group by os.store_name_S+':'+sz.description  order  by  store_name

delete  from AT_EM_DevParam




select  * from  info_DevParam  where  1=1  order by devName

select  * from  info_DevParam  where  1=1  and  ParamCode = '123-096-03'

select   * from  work_center

select  * from  EQUIPMENT_CLASS

select  * from  EQUIPMENT

select  * from PRODUCTION_LINE

select  TOP  14 wc_name from WORK_CENTER  where 1=1 and uda_0 = 'S21' 

select  TOP  14 DevCode,DevName,ParamValue ,(SUBSTRING(CONVERT(nvarchar,Createtime, 120), 6, 5))Createtime from  info_DevParam  where   ParamName ='运行状态'

update  info_DevParam set ParamValue = '运行+报警'
where  DevCode = '835-037'  and   ParamName ='运行状态'


select  * from  info_DevParam where  DevCode = '835-037'


select *from    EQUIPMENT  where  1=1 and  equip_name = '835-022'


select  * from  info_DevParam where 1=1 

select * from  EQUIPMENT

select * from work_center
select * from  WC_RS_EQUIP_REL

select * from  WC_PRODUCTION_QUEUE
、
select work_center_S,*from UDA_Equipment

select * from  EQUIPMENT_CLASS
select * from AT_EM_EquipmentStatusDetail

select * from  EQUIPMENT

select  equip_key,equip_name,ET.description,work_center_S from  EQUIPMENT  ET
left join UDA_Equipment  UT on ET.equip_key = UT.object_key
where 1=1
select * from at_EM_EquipmentStatusDetail

 select di.CODE_S,di.VALUE_S  from AT_SM_DATADICTIONAR  dd  inner join AT_SM_DATADICTIONARYITEM di on  dd.ATR_KEY = di.PARENT_KEY where 1=1 and dd.DESCRIPTION_S = '设备状态'

 select  * from AT_SM_DATADICTIONAR

 select  * from  AT_SM_DATADICTIONARYITEM






 select  * from  info_DevParam  where  DevName = 'A02'

 update  info_DevParam  set ParamValue  = '运行'  
 where  DevName = 'A02' and ParamName = '运行状态'

  select a.DevName,a.DevCode,a.ParamName,a.ParamValue  from (select  * from info_DevParam where    1= 1  
 and  DevName like'%L0%'  or DevName like '%A0%' )a  where  1=1  and  ParamName = '运行状态'



 select equip_name_S,wc_key_I,time_consuming_I from AT_EM_EquipmentStatusDetail  where  1=1  and  current_status_I  not in(10,90)
 order  by  creation_time


  select sum(time_consuming_I) from AT_EM_EquipmentStatusDetail  where  1=1  and  current_status_I  not in(10,90)

   select sum(time_consuming_I),creation_time from AT_EM_EquipmentStatusDetail  where  1=1  and  current_status_I  not in(10,90)  group by  time_consuming_I,creation_time

  select  * from  UDA_OrderItem


  ---报功明细表
  select top 10 sum(report_qty_F) from  at_OM_ProductionReport  where  1=1  and  order_item_name_S = 'MO-200825002-L02010'

    select  * from  at_OM_ProductionReport  where  1=1  and  order_item_name_S = 'MO-200825002-L02010'   order  by creation_time

	select  sum(case  when time_consuming_I is null then 0 else current_status_I  end)time_consuming_I,current_status_I 
	from  AT_EM_EquipmentStatusDetail  where 1=1  and  current_status_I = 10 group by time_consuming_I,current_status_I


	select  sum(case  when time_consuming_I is null then 0 else time_consuming_I  end)current_status_I,current_status_I 
from  AT_EM_EquipmentStatusDetail  where 1=1 and current_status_I = '60'  group by time_consuming_I,current_status_I


select time_consuming_I,(SUBSTRING(CONVERT(nvarchar, creation_time, 120), 1, 10))create_time_T from  AT_EM_EquipmentStatusDetail  where  current_status_I = 60

select  * from  IM_ImportPlan


select  sum(time_consuming_I),current_status_I from  AT_EM_EquipmentStatusDetail  where 1=1 and creation_time < '2020-09-01 00:00:00'  group by current_status_I

select  *  from  AT_EM_EquipmentStatusDetail  order  by creation_time



select sum(time_consuming_I) from  AT_EM_EquipmentStatusDetail  where 1=1 and current_status_I   in (10) and creation_time < '2020-09-02 00:00:00'
select sum(time_consuming_I) from  AT_EM_EquipmentStatusDetail  where 1=1 and current_status_I = '10' and creation_time < '2020-09-02 00:00:00'


select sum(time_consuming_I),current_status_I from  AT_EM_EquipmentStatusDetail  where 1=1 and creation_time >='2020-08-27 00:00:00' and creation_time <= '2020-08-28 00:00:00'group by  current_status_I

select  sum(report_qty_F),wc_key_I from  AT_OM_ProductionReport  where 1=1  and creation_time >= '2020-09-01 00:00:00' and creation_time <= '2020-09-02 00:00:00' and wc_key_I = '2011' group by wc_key_I  

select  * from  AT_OM_ProductionReport ae where 1=1 and wc_key_I = 2011
and ae.creation_time >= '2020-09-01 00:00:00' and ae.creation_time <= '2020-09-02 00:00:00' and wc_key_I = '2011'  

order  by creation_time  


select* from AT_QM_SubQualityProductManage  where 1=1  order  by creation_time

select  * from  AT_QM_SubQuality  where 1=1  order  by  creation_time



select sum() from  AT_OM_LoadMaterial ae where 1=1 and wc_key_I = 4848
and ae.creation_time >= '2020-09-01 00:00:00' and ae.creation_time <= '2020-09-02 00:00:00' and wc_key_I = '4848'  

order  by creation_time  


select  * from  WORK_CENTER  where  wc_key = 4848

select  sum(ae.qty_I) from AT_QM_SubQuality    ay
left join AT_QM_SubQualityProductManage  ae on ae.rejects_number_S_S = ay.rejects_number_S
where  1=1 
and wc_key_i = 2011    and ae.creation_time >= '2020-08-1 00:00:00' and ae.creation_time <= '2020-09-28 00:00:00' 



select  sum(report_qty_F),wc_key_I from  AT_OM_ProductionReport  where 1=1  and creation_time >= '2020-09-01 00:00:00' and creation_time <= '2020-09-02 00:00:00' and wc_key_I = '2011' group by wc_key_I  


select  sum(ae.qty_I),sum(ay.qty_I) from AT_QM_SubQuality    ay
                left join AT_QM_SubQualityProductManage  ae on ae.rejects_number_S_S = ay.rejects_number_S
                where  1=1  and ae.creation_time >= '2020-01-01 00:00:00' and ae.creation_time <= '2020-09-02 00:00:00' and wc_key_I = '2011' 


				select  sum(report_qty_F),wc_key_I from  AT_OM_ProductionReport  where 1=1 
				and creation_time >= '2020-09-01 00:00:00' and creation_time <= '2020-09-02 00:00:00' and wc_key_I = '4848' group by wc_key_I


				select  *from AT_EM_EquipmentStatusDetail

				select  wc.wc_key,em.current_status_I,time_consuming_I from  WORK_CENTER  wc
				left join AT_EM_EquipmentStatusDetail em on em.wc_key_I = wc.wc_key
				where  1=1
				and  wc_key = 2011
				 group  by  wc_key,em.current_status_I,time_consuming_I,em.creation_time
				order by  em.creation_time  desc  
--拿到各组中最新的一条数据


select  wc.wc_key,wc.wc_name,em.current_status_I,time_consuming_I from  WORK_CENTER  wc
left join (select?s.wc_key_I,current_status_I,time_consuming_I?from?(?select?*,?row_number()?over?(partition?by?wc_key_I?order?by?creation_time desc)?as?group_idx??from?AT_EM_EquipmentStatusDetail )?s where?s.group_idx?=?1)em
  on em.wc_key_I = wc.wc_key
  left  join  P_LINE_WORK_CENTER pl on pl.child_key = wc.wc_key
  left join  PRODUCTION_LINE pe on pe.p_line_key = pl.parent_key
  left join AREA_PRODUCTION_LINE  al on al.child_key = pe.p_line_key
 left  join AREA ar on ar.area_key = al.parent_key
 left join SITE_AREA  sa on sa.child_key = ar.area_key
 left join site si on si.site_key = sa.parent_key
 where  ar.area_name = 'K11-制造一部一科'  and  pe.p_line_name = 'L02'




  select  * from  AREA

  select * from PRODUCTION_LINE 


       select distinct '',oi.order_type_I,wo.order_number,wis.planned_route,(oi.operation_name_S+oi.operation_desc_S)op_step,oi.p_line_key_S,are.wc_key_I,cast(wis.quantity_ordered as decimal)quantity_ordered,cast(oi.finished_qty_F as decimal)finished_qty_F ,are.seq_number_I,are.order_status_I,are.order_Statusdesc_I,oi.reception_pline_key_I,oi.send_pline_key_I
			 , (SUBSTRING(CONVERT(nvarchar, wis.planned_start_time, 120), 1, 10))planned_start_time,(SUBSTRING(CONVERT(nvarchar,wis.planned_finish_time, 120), 1, 10))planned_finish_time,(SUBSTRING(CONVERT(nvarchar,oi.actual_start_time_T, 120), 1, 13))actual_start_time_T,(SUBSTRING(CONVERT(nvarchar,oi.actual_finish_time_T, 120), 1, 13))actual_finish_time_T,(SUBSTRING(CONVERT(nvarchar,oi.close_time_t, 120), 1, 20))close_time_t,oi.remark_S ,wis.order_item,are.atr_key
			 from WORK_ORDER_ITEMS wis
			  left join UDA_OrderItem oi  on  wis.order_item_key = oi.object_key
			 left join WORK_ORDER wo on wo.order_key = wis.order_key 
			 left join PRODUCTION_LINE pl on pl.p_line_key = oi.p_line_key_S
			 left join AREA_PRODUCTION_LINE  al on al.child_key = pl.p_line_key
			 left  join AREA ar on ar.area_key = al.parent_key
			 left join SITE_AREA  sa on sa.child_key = ar.area_key
			 left join site si on si.site_key = sa.parent_key
			 left  join  AT_OM_WC_WOI_REL  are on are.order_item_key_I = wis.order_item_key





			 select  wc.wc_key,wc.wc_name,em.current_status_I,time_consuming_I from  WORK_CENTER  wc
        left join (select?s.wc_key_I,current_status_I,time_consuming_I?from?(?select?*,?row_number()?over?(partition?by?wc_key_I?order?by?creation_time desc)?as?group_idx??from?AT_EM_EquipmentStatusDetail )?s where?s.group_idx?=?1)em
        on em.wc_key_I = wc.wc_key
        left  join  P_LINE_WORK_CENTER pl on pl.child_key = wc.wc_key
        left join  PRODUCTION_LINE pe on pe.p_line_key = pl.parent_key
        left join AREA_PRODUCTION_LINE  al on al.child_key = pe.p_line_key
        left  join AREA ar on ar.area_key = al.parent_key
        left join SITE_AREA  sa on sa.child_key = ar.area_key
        left join site si on si.site_key = sa.parent_key   where 1=1

		select  wc.wc_key,wc.wc_name,em.current_status_I,time_consuming_I from  WORK_CENTER  wc\r
        left join (select s.wc_key_I,current_status_I,time_consuming_I?from?(?select?*,?row_number()?over?(partition?by?wc_key_I?order?by?creation_time desc)?as?group_idx??from?AT_EM_EquipmentStatusDetail )?s where?s.group_idx?=?1)em\r
        on em.wc_key_I = wc.wc_key
        left  join  P_LINE_WORK_CENTER pl on pl.child_key = wc.wc_key
        left join  PRODUCTION_LINE pe on pe.p_line_key = pl.parent_key
        left join AREA_PRODUCTION_LINE  al on al.child_key = pe.p_line_key
        left  join AREA ar on ar.area_key = al.parent_key
        left join SITE_AREA  sa on sa.child_key = ar.area_key
        left join site si on si.site_key = sa.parent_key   where 1=1



		select  wc.wc_key,wc.wc_name,em.current_status_I,time_consuming_I from  WORK_CENTER  wc
        left join (select?s.wc_key_I,current_status_I,time_consuming_I?from?(?select?*,?row_number()?over?(partition?by?wc_key_I?order?by?creation_time desc)?as?group_idx??from?AT_EM_EquipmentStatusDetail )?s where?s.group_idx?=?1)em
        on em.wc_key_I = wc.wc_key
        left  join  P_LINE_WORK_CENTER pl on pl.child_key = wc.wc_key
        left join  PRODUCTION_LINE pe on pe.p_line_key = pl.parent_key
        left join AREA_PRODUCTION_LINE  al on al.child_key = pe.p_line_key
        left  join AREA ar on ar.area_key = al.parent_key
        left join SITE_AREA  sa on sa.child_key = ar.area_key
        left join site si on si.site_key = sa.parent_key   where 1=1;

select s.wc_key_I,current_status_I,time_consuming_I,start_time_T from 
( select *, row_number()  over  (partition  by  current_status_I  order  by  creation_time desc)  as  group_idx    from  AT_EM_EquipmentStatusDetail )  s where  s.group_idx  =  1;


select  * from  AT_EM_de
       