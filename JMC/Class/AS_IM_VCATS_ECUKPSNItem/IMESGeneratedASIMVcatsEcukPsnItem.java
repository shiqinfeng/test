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
 * Generated interface definition for application table AS_IM_Vcats_EcukPsnItem.
 * Application table description: null
 * @ftps.exclude 
 */
public interface IMESGeneratedASIMVcatsEcukPsnItem extends IMESATObject {

    /** Generated attribute definition */
    public static final String ATDEFINITION_NAME = "AS_IM_Vcats_EcukPsnItem";


    /** Generated property name */
    public static final String PROP_NAME_BARCODE = "barcode";

    /** Generated column name */
    public static final String SQL_COL_NAME_BARCODE = "barcode_S";
    

    /** Generated property name */
    public static final String PROP_NAME_COMMODITYCODE = "commoditycode";

    /** Generated column name */
    public static final String SQL_COL_NAME_COMMODITYCODE = "commodity_code_S";
    
    /**
     * Generated getter for column barcode.
     * Column description: 
     *
     * @return the requested value
     */
    public String getBarcode();

    /**
     * Generated setter for column barcode.
     * Column description: 
     *
     * @param value The new value to be assigned
     */
    public void setBarcode(String value);

    /**
     * Generated getter for column commodity_code.
     * Column description: 
     *
     * @return the requested value
     */
    public String getCommoditycode();

    /**
     * Generated setter for column commodity_code.
     * Column description: 
     *
     * @param value The new value to be assigned
     */
    public void setCommoditycode(String value);

}
