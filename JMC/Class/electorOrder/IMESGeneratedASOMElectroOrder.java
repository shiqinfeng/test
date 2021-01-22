// CHECKSTYLE:FileLength:off (reason:generated)
// CHECKSTYLE:LineLength:off (reason:generated)
package ... tbd ... // TODO Please specify package name;

/**
 * This file was generated by ATDefAccessClassGenerator and FMPP 2.3.15
 *
 * Please do not modify this file manually !!
 */
import com.rockwell.mes.commons.base.ifc.objects.IMESATObject;

import com.datasweep.compatibility.ui.Time;

/**
 * Generated interface definition for application table AS_OM_ElectroOrder.
 * Application table description: null
 * @ftps.exclude 
 */
public interface IMESGeneratedASOMElectroOrder extends IMESATObject {

    /** Generated attribute definition */
    public static final String ATDEFINITION_NAME = "AS_OM_ElectroOrder";


    /** Generated property name */
    public static final String PROP_NAME_FINISHTIME = "finishtime";

    /** Generated column name */
    public static final String SQL_COL_NAME_FINISHTIME = "finish_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_ORDERNO = "orderno";

    /** Generated column name */
    public static final String SQL_COL_NAME_ORDERNO = "order_no_S";
    

    /** Generated property name */
    public static final String PROP_NAME_PLANFINISHTIME = "planfinishtime";

    /** Generated column name */
    public static final String SQL_COL_NAME_PLANFINISHTIME = "plan_finish_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_PLANPRODUCTTIME = "planproducttime";

    /** Generated column name */
    public static final String SQL_COL_NAME_PLANPRODUCTTIME = "plan_producttime_T";
    

    /** Generated property name */
    public static final String PROP_NAME_RELEASETIME = "releasetime";

    /** Generated column name */
    public static final String SQL_COL_NAME_RELEASETIME = "release_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_SENDTIME = "sendtime";

    /** Generated column name */
    public static final String SQL_COL_NAME_SENDTIME = "send_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_STARTTIME = "starttime";

    /** Generated column name */
    public static final String SQL_COL_NAME_STARTTIME = "start_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_STATUS = "status";

    /** Generated column name */
    public static final String SQL_COL_NAME_STATUS = "status_I";
    

    /** Generated property name */
    public static final String PROP_NAME_TAKEOUTTIME = "takeouttime";

    /** Generated column name */
    public static final String SQL_COL_NAME_TAKEOUTTIME = "take_out_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_VIN = "vin";

    /** Generated column name */
    public static final String SQL_COL_NAME_VIN = "vin_S";
    
    /**
     * Generated getter for column finish_time.
     * Column description: 完成时间
     *
     * @return the requested value
     */
    public Time getFinishtime();

    /**
     * Generated setter for column finish_time.
     * Column description: 完成时间
     *
     * @param value The new value to be assigned
     */
    public void setFinishtime(Time value);

    /**
     * Generated getter for column order_no.
     * Column description: 订单号
     *
     * @return the requested value
     */
    public String getOrderno();

    /**
     * Generated setter for column order_no.
     * Column description: 订单号
     *
     * @param value The new value to be assigned
     */
    public void setOrderno(String value);

    /**
     * Generated getter for column plan_finish_time.
     * Column description: 计划完成时间
     *
     * @return the requested value
     */
    public Time getPlanfinishtime();

    /**
     * Generated setter for column plan_finish_time.
     * Column description: 计划完成时间
     *
     * @param value The new value to be assigned
     */
    public void setPlanfinishtime(Time value);

    /**
     * Generated getter for column plan_producttime.
     * Column description: 计划生产时间
     *
     * @return the requested value
     */
    public Time getPlanproducttime();

    /**
     * Generated setter for column plan_producttime.
     * Column description: 计划生产时间
     *
     * @param value The new value to be assigned
     */
    public void setPlanproducttime(Time value);

    /**
     * Generated getter for column release_time.
     * Column description: 发布时间
     *
     * @return the requested value
     */
    public Time getReleasetime();

    /**
     * Generated setter for column release_time.
     * Column description: 发布时间
     *
     * @param value The new value to be assigned
     */
    public void setReleasetime(Time value);

    /**
     * Generated getter for column send_time.
     * Column description: 送达时间
     *
     * @return the requested value
     */
    public Time getSendtime();

    /**
     * Generated setter for column send_time.
     * Column description: 送达时间
     *
     * @param value The new value to be assigned
     */
    public void setSendtime(Time value);

    /**
     * Generated getter for column start_time.
     * Column description: 启动时间
     *
     * @return the requested value
     */
    public Time getStarttime();

    /**
     * Generated setter for column start_time.
     * Column description: 启动时间
     *
     * @param value The new value to be assigned
     */
    public void setStarttime(Time value);

    /**
     * Generated getter for column status.
     * Column description: 订单状态
     *
     * @return the requested value
     */
    public Long getStatus();

    /**
     * Generated setter for column status.
     * Column description: 订单状态
     *
     * @param value The new value to be assigned
     */
    public void setStatus(Long value);

    /**
     * Generated getter for column take_out_time.
     * Column description: 拉出时间
     *
     * @return the requested value
     */
    public Time getTakeouttime();

    /**
     * Generated setter for column take_out_time.
     * Column description: 拉出时间
     *
     * @param value The new value to be assigned
     */
    public void setTakeouttime(Time value);

    /**
     * Generated getter for column vin.
     * Column description: VIN号
     *
     * @return the requested value
     */
    public String getVin();

    /**
     * Generated setter for column vin.
     * Column description: VIN号
     *
     * @param value The new value to be assigned
     */
    public void setVin(String value);

}
