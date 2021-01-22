// CHECKSTYLE:FileLength:off (reason:generated)
// CHECKSTYLE:LineLength:off (reason:generated)
package ... tbd ... // TODO Please specify package name;

/**
 * This file was generated by ATDefAccessClassGenerator and FMPP 2.3.15
 *
 * Please do not modify this file manually !!
 */
import com.rockwell.mes.commons.base.ifc.objects.IMESATObject;


/**
 * Generated interface definition for application table AS_IM_ObdDetection.
 * Application table description: null
 * @ftps.exclude 
 */
public interface IMESGeneratedASIMObdDetection extends IMESATObject {

    /** Generated attribute definition */
    public static final String ATDEFINITION_NAME = "AS_IM_ObdDetection";


    /** Generated property name */
    public static final String PROP_NAME_APASS = "apass";

    /** Generated column name */
    public static final String SQL_COL_NAME_APASS = "apass_S";
    

    /** Generated property name */
    public static final String PROP_NAME_CALID = "calid";

    /** Generated column name */
    public static final String SQL_COL_NAME_CALID = "calid_S";
    

    /** Generated property name */
    public static final String PROP_NAME_CVN = "cvn";

    /** Generated column name */
    public static final String SQL_COL_NAME_CVN = "cvn_S";
    

    /** Generated property name */
    public static final String PROP_NAME_JCXTNO = "jcxtno";

    /** Generated column name */
    public static final String SQL_COL_NAME_JCXTNO = "jcxtno_S";
    

    /** Generated property name */
    public static final String PROP_NAME_MODULEID = "moduleid";

    /** Generated column name */
    public static final String SQL_COL_NAME_MODULEID = "moduleid_S";
    

    /** Generated property name */
    public static final String PROP_NAME_OBD = "obd";

    /** Generated column name */
    public static final String SQL_COL_NAME_OBD = "obd_S";
    

    /** Generated property name */
    public static final String PROP_NAME_ODO = "odo";

    /** Generated column name */
    public static final String SQL_COL_NAME_ODO = "odo_S";
    

    /** Generated property name */
    public static final String PROP_NAME_OPASS = "opass";

    /** Generated column name */
    public static final String SQL_COL_NAME_OPASS = "opass_S";
    

    /** Generated property name */
    public static final String PROP_NAME_OTESTDATE = "otestdate";

    /** Generated column name */
    public static final String SQL_COL_NAME_OTESTDATE = "otestdate_S";
    

    /** Generated property name */
    public static final String PROP_NAME_RESULT = "result";

    /** Generated column name */
    public static final String SQL_COL_NAME_RESULT = "result_S";
    

    /** Generated property name */
    public static final String PROP_NAME_VIN = "vin";

    /** Generated column name */
    public static final String SQL_COL_NAME_VIN = "vin_S";
    

    /** Generated property name */
    public static final String PROP_NAME_ZLINENO = "zlineno";

    /** Generated column name */
    public static final String SQL_COL_NAME_ZLINENO = "zlineno_S";
    

    /** Generated property name */
    public static final String PROP_NAME_ZPLANT = "zplant";

    /** Generated column name */
    public static final String SQL_COL_NAME_ZPLANT = "zplant_S";
    
    /**
     * Generated getter for column apass.
     * Column description: 外观检验判定
     *
     * @return the requested value
     */
    public String getApass();

    /**
     * Generated setter for column apass.
     * Column description: 外观检验判定
     *
     * @param value The new value to be assigned
     */
    public void setApass(String value);

    /**
     * Generated getter for column calid.
     * Column description: CALID
     *
     * @return the requested value
     */
    public String getCalid();

    /**
     * Generated setter for column calid.
     * Column description: CALID
     *
     * @param value The new value to be assigned
     */
    public void setCalid(String value);

    /**
     * Generated getter for column cvn.
     * Column description: CVN
     *
     * @return the requested value
     */
    public String getCvn();

    /**
     * Generated setter for column cvn.
     * Column description: CVN
     *
     * @param value The new value to be assigned
     */
    public void setCvn(String value);

    /**
     * Generated getter for column jcxtno.
     * Column description: 检测系统编号
     *
     * @return the requested value
     */
    public String getJcxtno();

    /**
     * Generated setter for column jcxtno.
     * Column description: 检测系统编号
     *
     * @param value The new value to be assigned
     */
    public void setJcxtno(String value);

    /**
     * Generated getter for column moduleid.
     * Column description: 控制单元模块ID
     *
     * @return the requested value
     */
    public String getModuleid();

    /**
     * Generated setter for column moduleid.
     * Column description: 控制单元模块ID
     *
     * @param value The new value to be assigned
     */
    public void setModuleid(String value);

    /**
     * Generated getter for column obd.
     * Column description: 型式检验时的 OBD 要求
     *
     * @return the requested value
     */
    public String getObd();

    /**
     * Generated setter for column obd.
     * Column description: 型式检验时的 OBD 要求
     *
     * @param value The new value to be assigned
     */
    public void setObd(String value);

    /**
     * Generated getter for column odo.
     * Column description: 车辆累计行驶里程（ODO）
     *
     * @return the requested value
     */
    public String getOdo();

    /**
     * Generated setter for column odo.
     * Column description: 车辆累计行驶里程（ODO）
     *
     * @param value The new value to be assigned
     */
    public void setOdo(String value);

    /**
     * Generated getter for column opass.
     * Column description: OBD检查判定
     *
     * @return the requested value
     */
    public String getOpass();

    /**
     * Generated setter for column opass.
     * Column description: OBD检查判定
     *
     * @param value The new value to be assigned
     */
    public void setOpass(String value);

    /**
     * Generated getter for column otestdate.
     * Column description: OBD检测日期
     *
     * @return the requested value
     */
    public String getOtestdate();

    /**
     * Generated setter for column otestdate.
     * Column description: OBD检测日期
     *
     * @param value The new value to be assigned
     */
    public void setOtestdate(String value);

    /**
     * Generated getter for column result.
     * Column description: 最终判定
     *
     * @return the requested value
     */
    public String getResult();

    /**
     * Generated setter for column result.
     * Column description: 最终判定
     *
     * @param value The new value to be assigned
     */
    public void setResult(String value);

    /**
     * Generated getter for column vin.
     * Column description: Vin
     *
     * @return the requested value
     */
    public String getVin();

    /**
     * Generated setter for column vin.
     * Column description: Vin
     *
     * @param value The new value to be assigned
     */
    public void setVin(String value);

    /**
     * Generated getter for column zlineno.
     * Column description: 检测线号
     *
     * @return the requested value
     */
    public String getZlineno();

    /**
     * Generated setter for column zlineno.
     * Column description: 检测线号
     *
     * @param value The new value to be assigned
     */
    public void setZlineno(String value);

    /**
     * Generated getter for column zplant.
     * Column description: 工厂代码
     *
     * @return the requested value
     */
    public String getZplant();

    /**
     * Generated setter for column zplant.
     * Column description: 工厂代码
     *
     * @param value The new value to be assigned
     */
    public void setZplant(String value);

}
