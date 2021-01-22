select * from (
                    select '',oq.atr_key,wo.order_number,oq.bsn_s,oq.sort_no_i,decode(oq.is_manual_y,1,'Y','N')
                    from at_as_om_bdc_outqueue oq
                    join work_order wo on oq.order_54 = wo.order_key
                    where is_out_y = 0
                    order by sort_no_i) where rownum<=20;
                    
                    
                    select is_hold_Y from AT_AS_OM_BDC_stock ak
                    left join work_order wo on wo.order_key = ak.order_54
                    left join AT_AS_OM_BDC_HoldVehicle ae on wo.order_key = ae.order_54
                          where  1=1 
                    and  is_inqueue_y = 0 
                    and  wo.order_key = 115;
                    
                select * from  AT_AS_OM_BDC_HoldVehicle;
                
                
                 select '',
    bs.area_s,
    wo.order_number,
    op.bsn_s,
    bs.vin_s,
    bs.paint_color_s,
    decode(bs.is_electro_order_y,1,'Y','N'),
    bs.group_no_I,
    bs.mes_seq_I,
    bs.bdc_seq_I,
    usf_get_choice_desc('BDC_SENDSTATUS',send_status_I,'"+getCurrentLanguageCode()+"','"+getCurrentCountryCode()+"'),
    to_char(bs.send_time_T,'yyyy-mm-dd hh24:mi:ss')
    from at_AS_OM_BDC_OutQueue  bs
    join work_order wo on bs.order_54 = wo.order_key
    join at_as_om_orderproperty op on bs.order_54 = op.order_54
    join uda_order uo  on uo.object_key = wo.order_key
    left join at_AS_OM_OrderFeatureTransp oft on oft.order_number_s = wo.order_number  where 1=1;
    
    
    
    

    
    
    
    
    select '',io.area_s,wo.order_number,op.bsn_s,op.vin_s,io.paint_color_s,io.is_electro_order_Y,io.in_type_s,io.oper_type_s,to_char(io.oper_time_t,'yyyy-mm-dd hh24:mi:ss')
                    from at_as_om_bdc_inoutlog io
                    left join work_order wo on wo.order_key = io.order_54
                    left join at_as_om_orderproperty op on op.order_54 = io.order_54
                    where 1=1;
                    
                    
                    
                    
                    select '',io.area_s,wo.order_number,op.bsn_s,op.vin_s,io.paint_color_s,io.is_electro_order_Y,io.in_type_s,io.oper_type_s,to_char(io.oper_time_t,'yyyy-mm-dd hh24:mi:ss')
                    from at_as_om_bdc_inoutlog io
                    left join work_order wo on wo.order_key = io.order_54
                    left join at_as_om_orderproperty op on op.order_54 = io.order_54
                    where 1=1  and  io.oper_type_s = 'IN'   



select '',io.area_s,wo.order_number,op.bsn_s,op.vin_s,io.paint_color_s,io.is_electro_order_Y,io.in_type_s,io.oper_type_s,to_char(io.oper_time_t,'yyyy-mm-dd hh24:mi:ss')
                    from at_as_om_bdc_inoutlog io
                    left join work_order wo on wo.order_key = io.order_54
                    left join at_as_om_orderproperty op on op.order_54 = io.order_54
                    where 1=1  and io.area_s = 'WBS;
            
            
            
            
            select '', 
            ae.atr_key,
            wo.order_number,
            ur.bsn_S,
            ur.vin_S,
            usf_get_choice_desc('BDCLOCKSTATUS',ae.is_hold_y,'"+getCurrentLanguageCode()+"','"+getCurrentCountryCode()+"'),
            ae.hold_cause_S,
            to_char(ae.hold_time_T,'yyyy-mm-dd hh24:mi:ss'),
            to_char(ae.unhold_time_T ,'yyyy-mm-dd hh24:mi:ss')
            from 
            AT_AS_OM_BDC_HoldVehicle  ae
            left join work_order wo on ae.order_54 = wo.order_key
            left join uda_order ur on ur.object_key = wo.order_key
            where  1=1  and ae.is_hold_y =0;
            
            select '', 
            ae.atr_key,
            wo.order_number,
            ur.bsn_S,
            ur.vin_S,
            usf_get_choice_desc('BDCLOCKSTATUS',ae.is_hold_y,'"+getCurrentLanguageCode()+"','"+getCurrentCountryCode()+"'),
            ae.hold_cause_S,
            to_char(ae.hold_time_T,'yyyy-mm-dd hh24:mi:ss'),
            to_char(ae.unhold_time_T ,'yyyy-mm-dd hh24:mi:ss')
            from 
            AT_AS_OM_BDC_HoldVehicle  ae
            left join work_order wo on ae.order_54 = wo.order_key
            left join uda_order ur on ur.object_key = wo.order_key
            where  1=1  and ae.is_hold_y =1;
            
            
            
            select '',
    bs.area_s,
    wo.order_number,
    op.bsn_s,
    bs.vin_s,
    uo.part_number_S,
    bs.paint_color_s,
    bs.group_no_I,
    decode(bs.is_electro_order_y,1,'Y','N'), 
    bs.mes_seq_I,
    bs.bdc_seq_I,
    usf_get_choice_desc('BDC_SENDSTATUS',send_status_I,'"+getCurrentLanguageCode()+"','"+getCurrentCountryCode()+"'),
    to_char(bs.send_time_T,'yyyy-mm-dd hh24:mi:ss')
    from at_AS_OM_BDC_OutQueue  bs
    join work_order wo on bs.order_54 = wo.order_key
    join at_as_om_orderproperty op on bs.order_54 = op.order_54
    join uda_order uo  on uo.object_key = wo.order_key
    left join at_AS_OM_OrderFeatureTransp oft on oft.order_number_s = wo.order_number  where 1=1   order by bs.creation_time;
    
    
    
    
    select ak.bsn_S,wo.order_number,ud.part_number_S,ak.area_s,ak.paint_color_S,ak.is_inqueue_y from  AT_AS_OM_BDC_Stock  ak
    left join work_order  wo  on wo.order_key = ak.order_54
    left join  uda_order ud on ud.object_key = wo.order_key
    where 1=1 and  ak.area_s = 'PBS'
    order by  bsn_s;
    
    update  AT_AS_OM_BDC_Stock  set area_s = 'PBS'  where  area_S = 'WBS'  and   is_inqueue_Y =0;
    
    
    
    --删除OutQuer 表中的数据 
delete  from at_as_om_bdc_outqueue;

select * from  at_as_om_bdc_stock where  1=1  and is_inqueue_y = 0;

--更新stock表中的状态学信息 。
update  at_As_OM_bdc_stock  set is_inqueue_y = 0  where  is_inqueue_y=1;


            