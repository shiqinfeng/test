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
 * Generated interface definition for application table AS_IM_VCATS_ProcessResult.
 * Application table description: null
 * @ftps.exclude 
 */
public interface IMESGeneratedASIMVCATSProcessResult extends IMESATObject {

    /** Generated attribute definition */
    public static final String ATDEFINITION_NAME = "AS_IM_VCATS_ProcessResult";


    /** Generated property name */
    public static final String PROP_NAME_PROCESS = "process";

    /** Generated column name */
    public static final String SQL_COL_NAME_PROCESS = "process_S";
    

    /** Generated property name */
    public static final String PROP_NAME_PROCESSTIME = "processtime";

    /** Generated column name */
    public static final String SQL_COL_NAME_PROCESSTIME = "process_time_T";
    

    /** Generated property name */
    public static final String PROP_NAME_RESULT = "result";

    /** Generated column name */
    public static final String SQL_COL_NAME_RESULT = "result_S";
    

    /** Generated property name */
    public static final String PROP_NAME_VIN = "vin";

    /** Generated column name */
    public static final String SQL_COL_NAME_VIN = "vin_S";
    
    /**
     * Generated getter for column process.
     * Column description: 
     *
     * @return the requested value
     */
    public String getProcess();

    /**
     * Generated setter for column process.
     * Column description: 
     *
     * @param value The new value to be assigned
     */
    public void setProcess(String value);

    /**
     * Generated getter for column process_time.
     * Column description: 
     *
     * @return the requested value
     */
    public Time getProcesstime();

    /**
     * Generated setter for column process_time.
     * Column description: 
     *
     * @param value The new value to be assigned
     */
    public void setProcesstime(Time value);

    /**
     * Generated getter for column result.
     * Column description: 
     *
     * @return the requested value
     */
    public String getResult();

    /**
     * Generated setter for column result.
     * Column description: 
     *
     * @param value The new value to be assigned
     */
    public void setResult(String value);

    /**
     * Generated getter for column vin.
     * Column description: 
     *
     * @return the requested value
     */
    public String getVin();

    /**
     * Generated setter for column vin.
     * Column description: 
     *
     * @param value The new value to be assigned
     */
    public void setVin(String value);

}
