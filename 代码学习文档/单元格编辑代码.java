/**
 * @author: Qu Shaowei
 * @date: 2018.12.19
 * @description: Indicates item location binding management
 * @versions: 1.0
 * */
importSubroutine("MES_OM_Common")
importSubroutine("MES_Common_UI")
importSubroutine("MES_Common_InitCombobox")

//=====Start Customization=======================================================================

FORM_MODULE = MODULE_OM
DEFAULT_OBJ = "DEFAULT_OBJ"
GRIDHEADERLABELTEXTTYPE = 1 
DEFAULT_OBJ_VECTOR = "DEFAULT_OBJ_VECTOR"
regx = "^[0-9]+([.]{1}[0-9]+){0,1}$"
COLOR_BLUE = class com.datasweep.compatibility.ui.Color(204,255,204)
//=====End Customization===========================================================================
/**
 * 初始化 Form  
 **/        
function frmInitForm(){
    initEnvironment()
    frmReset()
    //隐藏字段
    hideColumn(gridCollectionResult)
    //获取当前使用对象
    user = getCurrentUser() 
    name = user.getName()
    editRecorder.setText(name)
    editRecorder.setEnabled(false)
    
    defaultObj = getFormProperty(DEFAULT_OBJ)
    comboboxIndicatorCategory.setEnabled(false)
    initComboboxIndicatorCategory(comboboxIndicatorCategory)
    if(isNullOrEmpty(defaultObj))
    {
        //=====Start Customization=======================================================================
        defaultObj = class com.rockwell.pims.model.dc.collectionresult.MESDCCollectionResult()
    }
    else
    {
         frmInitEditDisabled()
    }
     //初始化下拉框
    objFilter = class com.rockwell.pims.model.dc.indicatorcategory.MESDCIndicatorCategoryFilter()      
    objFilter.forDescriptionEqualTo("测试板")      
    objs = objFilter.getFilteredObjects()      
    obj = null      
    if(objs.size() > 0)      
    {      
        obj = objs.get(0)      
    }      
    comboboxIndicatorCategory.setSelectedItem(obj)  
    
    objectBinderEnhancedJobNo.setPropertyObject(defaultObj)
    objectBinderEnhancedJobNo.refresh()
}
/**
 * 重置  
 **/
function frmReset()
{
    resetAllControlValues(groupboxData)
}
/**
 * 查询  
 **/
function frmQuery()
{
    //exception handle
    function handleException(exception)
    {
        //reminder message
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "QUERY_EXCEPTION", null, null,null, HANDLER_OPTION_DEFAULT, null)
        
        //print StackOverflowError
        logException(FORM_MODULE, exception)
        //log to DB
        logError(FORM_MODULE, exception.getMessage(), getDBTime(), "Form:" + getActiveDsForm().getName(), "Function:frmQuery()")
    }
//     catch(Exception, handleException)
    //=====Start Customization=======================================================================
    
    gridCollectionResult.clearGrid()
    gridCollectionResult.setNumberOfRows(0)

    indicatorType = comboboxIndicatorType.getSelectedItem()
     if(isNullOrEmpty(indicatorType))
    {
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "FIELD_NOT_NULL", ["指标项小类"], null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
    //获取采集点数量
    filter = class com.rockwell.autosuite.mes.model.om.DCPointCount.MESDCPointCountFilter()
    filter.forIndicatortypeEqualTo(indicatorType)
    datalist = filter.getFilteredObjects()
   // datalist.get(0)
    
    //比对出最大的采集点数 赋值给pointcount
    if(datalist.size()>0){  
        pointcount = datalist.get(0).getPointcount()
        for(i = 0;i < datalist.size();i++){
            pointcount1 = datalist.get(i).getPointcount()
            if(pointcount1 > pointcount)
            {
                pointcount = pointcount1
            }  
        }
        //表格设置总字段数
        gridCollectionResult.setNumberOfColumns(pointcount+6)
        for(i = 0;i<datalist.size();i++){
             indicator = datalist.get(i).getIndicator()
             pointcount = datalist.get(i).getPointcount()
             gridCollectionResult.setCellValue(i,0,i+1)
             gridCollectionResult.setCellValue(i,1,indicator.getDescription())
             //获取指标项中的数据
             indicatorStandardRelFilter = class com.rockwell.pims.model.dc.indicatorstandardrel.MESDCIndicatorStandardRelFilter()
             indicatorStandardRelFilter.forIndicatorEqualTo(indicator)
             indicatorStandardRelList = indicatorStandardRelFilter.getFilteredObjects()
             if(indicatorStandardRelList.size()>0){
                for(k=0;k<indicatorStandardRelList.size();k++){
                //通过指标项位置与指标项管理中 key指向同 获取上线 下线
                    indicator1 = indicatorStandardRelList.get(k).getIndicator()
                    if(indicator1.getKey()==indicator.getKey()){
                        indicatorStandardRel = indicatorStandardRelList.get(k)
                        
                        maxValue = indicatorStandardRel.getMaxvalue()
                        minValue = indicatorStandardRel.getMinvalue()
                        smaxValue = indicatorStandardRel.getSmaxvalue()
                        sminValue = indicatorStandardRel.getSminvalue()
                        
                        gridCollectionResult.setCellValue(i,2,maxValue)
                        gridCollectionResult.setCellValue(i,3,minValue)
                        gridCollectionResult.setCellValue(i,4,smaxValue)
                        gridCollectionResult.setCellValue(i,5,sminValue)             
                    }
                }             
             }            
             //给grid设置head
             for( j = 0; j<pointcount ; j++ ){
                gridCollectionResult.getColumn(j+6).setHeading("采集点"+(j+1)+"数据")
                gridCollectionResult.setCellBackColor(i,j+6,COLOR_BLUE)
                gridCollectionResult.setCellControl(i, j+6, Edit()) 
             }
        }
    }
}
/**
 * 保存  
 **/
function frmSave(){
     //exception handle
    function handleException(exception)
    {
        //prompt message
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "SAVE_EXCEPTION", null, null,null, HANDLER_OPTION_DEFAULT, null)
        //print StackOverflowError
        logException(FORM_MODULE, exception)
        //log to DB
        logError(FORM_MODULE, exception.getMessage(), getDBTime(), "Form:" + getActiveDsForm().getName(), "Function:frmSave()")
    }
   // catch(Exception, handleException)
   
    indicatorCategory = comboboxIndicatorCategory.getSelectedItem()
    indicatorType = comboboxIndicatorType.getSelectedItem()
    batch = editBatch.getText().trim()
    recorder = editRecorder.getText().trim()
    time = dateTimePickerTime.getValue()
    
    
    if(isNullOrEmpty(indicatorCategory))
    {
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "FIELD_NOT_NULL", [labelCategory.getText()], null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
    
    if(isNullOrEmpty(indicatorType))
    {
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "FIELD_NOT_NULL", [labelType.getText()], null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
     
    if(isNullOrEmpty(time))
    {
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "FIELD_NOT_NULL", [labelTime.getText()], null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
     if(isNullOrEmpty(batch))
    {
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "FIELD_NOT_NULL", [labelBatch.getText()], null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
    
     defaultObj1 = objectBinderEnhancedJobNo.getPropertyObject()
     keyWord = defaultObj1.getIndicatortypedesc()
    
     rowCount = gridCollectionResult.getNumberOfRows()
     column = gridCollectionResult.getNumberOfColumns()
     falg = false
     sprVector = vector()
     count = 0
    for(i = 0; i<rowCount;i++)
    {   
       
        indicator = gridCollectionResult.getCellValue(i,1)
        
        indicatorFilter = class com.rockwell.pims.model.dc.indicator.MESDCIndicatorFilter()
        indicatorFilter.forDescriptionContaining(indicator)
        indicatorList =  indicatorFilter.getFilteredObjects()
        //通过指标项获取值类型
        if(indicatorList.size()>0)
        {
            indicator1 = indicatorList.get(0)
        }
        valuetype = indicator1.getValuetype()
        for(j = 6; j < column ;j++)
        {
            value = gridCollectionResult.getCellValue(i,j) 
//             if(isNullOrEmpty(value))
//             {
//                 continue
//             }

            //采集点为空弹框提示
            if(!isNullOrEmpty(value)){
                count++
            }else{
               continue
            }
                    
            //数值型
            if(valuetype == 10)
            {
                //正则表达式
                if(value.matches(regx))
                {

                }
                else
                {
                    handleErrorMsg("MES_MAINFROM_MSG_TRX", "FIELD_NOT_STRING", ["第"+i+"行","第"+j+"列"], null, null, HANDLER_OPTION_DEFAULT, null)
                    return
                }
            }
        }
    }
    //如果记录数为0  意味采集点是空
   if(count == 0){
        handleErrorMsg("MES_MAINFROM_MSG_TRX", "VALUE_NOT_NULL", null, null, HANDLER_OPTION_DEFAULT, null)
        return
    }
     
     for(i = 0; i < rowCount; i++){
        indicator = gridCollectionResult.getCellValue(i,1)
        
        indicatorFilter = class com.rockwell.pims.model.dc.indicator.MESDCIndicatorFilter()
        indicatorFilter.forDescriptionContaining(indicator)
        indicatorList =  indicatorFilter.getFilteredObjects()
        if(indicatorList.size()>0)
        {
            indicator1 = indicatorList.get(0)
        }
        valuetype = indicator1.getValuetype()
        
        for(j = 6; j < column; j++){
           value = gridCollectionResult.getCellValue(i,j)
           if(isNullOrEmpty(value)){
                continue
           }
           defaultObj = class com.rockwell.pims.model.dc.collectionresult.MESDCCollectionResult()
           if(valuetype == 10)//数值型
           {
                if(value.matches(regx))
                {
                    valueL = class java.lang.Float::valueOf(value)
                    defaultObj.setValue(valueL)
                    defaultObj.setValues(value)
                }
            }
            else
            {
                if(value.matches(regx))
                {
                    valueL = class java.lang.Float::valueOf(value)
                    defaultObj.setValue(valueL)
                    defaultObj.setValues(value)
                }
                else
                {
                    defaultObj.setValues(value)
                }
                
            }        
          //  defaultObj = class com.rockwell.pims.model.dc.collectionresult.MESDCCollectionResult()
            
            defaultObj.setIndicatorcategorydesc(indicatorCategory.getDescription())
            defaultObj.setIndicatorcategoryno(indicatorCategory.getCode())
            defaultObj.setIndicatordesc(indicator1.getDescription())
            defaultObj.setIndicatorcode(indicator1.getCode())                         
            defaultObj.setBatchno(batch)
            defaultObj.setCollectiontime(time)
            defaultObj.setValuetype(indicator1.getValuetype())
            defaultObj.setUom(indicator1.getUom())
            defaultObj.setInspectfrequ(indicator1.getInspectfrequ())
            defaultObj.setBoundbatch(indicator1.getBoundbatch())
            defaultObj.setBoundvehicle(indicator1.getBoundvehicle())
            defaultObj.setProcedure(indicator1.getProcedure())
            defaultObj.setMeasuretech(indicator1.getMeasuretech())
            defaultObj.setSeriesrelate(indicator1.getSeriesrelate())
            defaultObj.setColorrelate(indicator1.getColorrelate())
            
            objFilter1 = class com.rockwell.pims.model.dc.indicatorstandardrel.MESDCIndicatorStandardRelFilter()
            objFilter1.forIndicatorEqualTo(indicator1)
            vectorobj1 = objFilter1.getFilteredObjects()
            if(vectorobj1.size() > 0)
            {
                maxvalue = vectorobj1.get(0).getMaxvalue()
                minvalue = vectorobj1.get(0).getMinvalue()
                smaxvalue = vectorobj1.get(0).getSmaxvalue()
                sminvalue = vectorobj1.get(0).getSminvalue()
                limitType = vectorobj1.get(0).getLimittype()
 
                defaultObj.setSmaxvalue(smaxvalue)
                defaultObj.setSminvalue(sminvalue)
                defaultObj.setMinvalue(minvalue)
                defaultObj.setMaxvalue(maxvalue)
                defaultObj.setLimittype(limitType)
            }
            defaultObj.setIndicatortypedesc(indicatorType.getDescription())
            defaultObj.setIndicatortypeno(indicatorType.getCode())
            defaultObj.setPoint("采集点"+(j-5)+"数值")
            
            
            user = getCurrentUser() 
            defaultObj.setRecorder(user.getName())
            defaultObj.setRecorderno(user.getDescription())
            
           // keyWord = defaultObj.getIndicatortypedesc()
            
            response = defaultObj.save(null,keyWord,null)
            if(response.isError())
            {
                handleErrorMsg("MES_MAINFROM_MSG_TRX", "SAVE_FAILED", [keyWord + "," +response.getFirstErrorMessage()], null,null, HANDLER_OPTION_DEFAULT, null)
                logError(FORM_MODULE,keyWord + " save failed," + response.getFirstErrorMessage(), getDBTime(), "Form:" + getActiveDsForm().getName(), "Function:frmSave()")
                return
            }
            sprVector.add(defaultObj)
        }
    } 
    handleInfoMsg("MES_MAINFROM_MSG_TRX", "SAVE_SUCCESSFULLY", null, null, HANDLER_OPTION_DEFAULT, null)
    logInfo(FORM_MODULE, keyWord +" save succefully", getDBTime(), "Form:" + getActiveDsForm().getName(), "Function:frmSave()")
    setFormProperty(DEFAULT_OBJ_VECTOR, sprVector)   
    closeDialog(0)
}

/**
 * 取消  
 **/ 
function frmCancel()
{
  //  objectBinderEnhancedJobNo.getPropertyObject().refresh()
    closeDialog(0)
}

/**
 * 初始化下拉框  
 **/ 
function initComboboxIndicatorType(combobox,indicatorCategory){
    combobox.removeAll()               
    filter = class com.rockwell.pims.model.dc.indicatortype.MESDCIndicatorTypeFilter()
    if(indicatorCategory == null)
    {
        return
    }
    filter.forIndicatorcategoryEqualTo(indicatorCategory)
    //short(1) 代表正序排序 short(2) 代表反序
    filter.addOrderATColumnBy("desctiption",short(1))
    vector = filter.getFilteredObjects()
    combobox.addItem(null)
    foreach obj(vector)
    {
        combobox.addItem(obj)
    }
}
/**
 * 初始化下拉框  
 **/        
 function initComboboxIndicatorCategory(combobox){
    combobox.removeAll()               
    filter = class com.rockwell.pims.model.dc.indicatorcategory.MESDCIndicatorCategoryFilter()
    //short(1) 代表正序排序 short(2) 代表反序
    filter.addOrderATColumnBy("description",short(1))
    vector = filter.getFilteredObjects()
    combobox.addItem(null)
    foreach obj(vector)
    {
        combobox.addItem(obj)
    }
}       
