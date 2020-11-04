//计划关闭逻辑


----------------主计划部分

function frmOff()
{   
   defaultObj = activityGridResult.getSelectedRowObject()
    if(isNullOrEmpty(defaultObj))
    {
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "SELECT_A_LINE", null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
   function handleException(exception)
    {    
        //prompt message
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "RESEQUENCE_EXCEPTION", null, null,null, HANDLER_OPTION_DEFAULT, null)
        //print StackOverflowError
        logException(FORM_MODULE, exception)
        //log
        logError(FORM_MODULE, exception.getMessage(), createTime(), "Form:" + getActiveDsForm().getName(), "Function:frmSave()")
    }
//     catch(Exception, handleException)  
    count = activityGrid.getNumberOfRows()
    if(count > 0)
    {
        for(i = count; i >= 0; i--)
        {
            cellValue = activityGrid.getCellObject(i,0)
            if(cellValue instanceof Boolean)
            {
                selected = ((Boolean)cellValue).booleanValue()
                if(selected)
                {
                    dataArray = activityGrid.getRowObject(i)
                    status = dataArray.getStatus()
                    //判断该计划下的所有工单状态
                    //主工单状态
                    order = getWorkOrder(dataArray.getPlannumber())
                    if(order.getUDA("order_status")==30)
                    {
                          dialogError("计划正在生产中，不能关闭")
                            return
                    }
                    //工序工单状态
                       vectoritemOrder =order.getOrderItems()
                       for(i=0;i<vectoritemOrder.size();i++)
                       {
                              obj = vectoritemOrder[i]
                              if(obj.getUDA("order_status")==30)
                              {
                                 dialogError("计划正在生产中，不能关闭")
                                 return  
                              }
                       }
                     
                    
                        if(status == 20 ||status == 30||status == 40 ||status == 10 ||status == 60)
                        {     
                            keyWord = "OrderName[" + dataArray.getPlannumber() + "] "
                            dataArray.setStatus(Long(50))
                            //获取当前用户名
//                             dataArray.setPlanImportN(getCurrentUser().getDescription())
//                             //获取当前时间
//                             dataArray.setPlanImportT(createTime())
                            //计划版本每次修改+1
                            // ataArray.setPlanVersion(Long(dataArray.getPlanVersion()+1))
                            response = dataArray.save(null,null,null)      
                        }
                        if(status == 50)
                        {
                           dialogError("计划已关闭，禁止进行任何操作")
                            return
                        }
//                         if(status == 60)
//                         {
//                            dialogError("计划已暂停")
//                             return
//                         }
                  }
              }
        }
        frmQuery()
    }
     createPlanHis(defaultObj)            
 }   