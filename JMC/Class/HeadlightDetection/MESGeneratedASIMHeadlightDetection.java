// CHECKSTYLE:FileLength:off (reason: generated)
// CHECKSTYLE:LineLength:off (reason: generated)
// CHECKSTYLE:MethodLength:off (reason: generated)
package ... tbd ... // TODO Please specify package name;

/**
 * This file is generated by ATDefAccessClassGenerator and FMPP 2.3.15
 *
 * Please do not modify this file manually !!
 */
 
import java.util.List;
 
import com.datasweep.compatibility.client.ATRow; 
import com.datasweep.compatibility.client.AccessPrivilege;
import com.datasweep.compatibility.client.DatasweepException;
import com.datasweep.compatibility.client.Response;
import com.datasweep.compatibility.client.Server;
import com.datasweep.compatibility.ui.Time;
import com.rockwell.mes.commons.base.ifc.objects.MESATObject;

import ... tbd ... // TODO Please specify package name.IMESASIMHeadlightDetection;
import ... tbd ... // TODO Please specify package name.IMESGeneratedASIMHeadlightDetection;
import ... tbd ... // TODO Please specify package name.MESASIMHeadlightDetection;
import ... tbd ... // TODO Please specify package name.MESASIMHeadlightDetectionFilter;


/**
 * Generated class definition for application table AS_IM_Headlight_Detection.
 * Application table description: null
 */
public class MESGeneratedASIMHeadlightDetection extends MESATObject //nl
                                                 implements IMESGeneratedASIMHeadlightDetection {


    /** Generated column name */
    public static final String COL_NAME_ZFOGLAMPLZ = "zfoglamplz";

    /** Generated column name */
    public static final String COL_NAME_ZFOGLAMPLZOK = "zfoglamplzok";

    /** Generated column name */
    public static final String COL_NAME_ZFOGLAMPRZ = "zfoglamprz";

    /** Generated column name */
    public static final String COL_NAME_ZFOGLAMPRZOK = "zfoglamprzok";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMINTENSITYL = "zhighbeamintensityl";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMINTENSITYLOK = "zhighbeamintensitylok";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMINTENSITYR = "zhighbeamintensityr";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMINTENSITYROK = "zhighbeamintensityrok";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMLY = "zhighbeamly";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMLYOK = "zhighbeamlyok";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMLZ = "zhighbeamlz";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMLZOK = "zhighbeamlzok";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMRY = "zhighbeamry";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMRYOK = "zhighbeamryok";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMRZ = "zhighbeamrz";

    /** Generated column name */
    public static final String COL_NAME_ZHIGHBEAMRZOK = "zhighbeamrzok";

    /** Generated column name */
    public static final String COL_NAME_ZLINENO = "zlineno";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMLY = "zlowbeamly";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMLYOK = "zlowbeamlyok";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMLZ = "zlowbeamlz";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMLZOK = "zlowbeamlzok";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMRY = "zlowbeamry";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMRYOK = "zlowbeamryok";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMRZ = "zlowbeamrz";

    /** Generated column name */
    public static final String COL_NAME_ZLOWBEAMRZOK = "zlowbeamrzok";

    /** Generated column name */
    public static final String COL_NAME_ZOVERALLRESULT = "zoverallresult";

    /** Generated column name */
    public static final String COL_NAME_ZPLANT = "zplant";

    /** Generated column name */
    public static final String COL_NAME_ZVIN = "zvin";

    @Override
    public String getATDefinitionName() {
        return ATDEFINITION_NAME;
    }
    
    /**
     * Generated constructor
     *
     * @param key The key of the ATRow to load.
     */
    public MESGeneratedASIMHeadlightDetection(long key) {
        super(key);
    }

    /**
     * Generated copy constructor
     *
     * @param source The source to copy.
     */
    public MESGeneratedASIMHeadlightDetection(MESGeneratedASIMHeadlightDetection source) {
        super(source);
    }

    /**
     * Generated constructor
     *
     * @param baseATRow The ATRow to wrap.
     */
    public MESGeneratedASIMHeadlightDetection(ATRow baseATRow) {
        super(baseATRow);
    }

    /**
     * Generated default constructor
     */
    public MESGeneratedASIMHeadlightDetection() {
        super();
    }

    /**
     * Generated method definition
     *
     * @param server The Server object
     * @return the filter object
     */
    public static MESASIMHeadlightDetectionFilter createFilter(Server server) {
        return new MESASIMHeadlightDetectionFilter(server);
    }

    /**
     * Generated method definition
     *
     * @return the filter object
     */
    public static MESASIMHeadlightDetectionFilter createFilter() {
        return new MESASIMHeadlightDetectionFilter();
    }

    /**
     * Generated method definition
     *
     * @param filter the Filter object
     * @return the list of the objects
     */
    public static List<IMESASIMHeadlightDetection> getFilteredObjects(MESASIMHeadlightDetectionFilter filter) {
        return MESATObject.getFilteredMESATObjectList(filter, MESASIMHeadlightDetection.class);
    }

    @Override
    public boolean refresh() {
        boolean ok = super.refresh();
        if (!ok) {
            return false;
        }
        
        return true;
    }    

    @Override
    public String getZfoglamplz() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZFOGLAMPLZ);
    }

    @Override
    public void setZfoglamplz(String value) {
        String oldValue = this.getZfoglamplz();
        this.dgtATRow.setValue(COL_NAME_ZFOGLAMPLZ, value);
        pcs.firePropertyChange(PROP_NAME_ZFOGLAMPLZ, oldValue, value);
    }

    @Override
    public String getZfoglamplzok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZFOGLAMPLZOK);
    }

    @Override
    public void setZfoglamplzok(String value) {
        String oldValue = this.getZfoglamplzok();
        this.dgtATRow.setValue(COL_NAME_ZFOGLAMPLZOK, value);
        pcs.firePropertyChange(PROP_NAME_ZFOGLAMPLZOK, oldValue, value);
    }

    @Override
    public String getZfoglamprz() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZFOGLAMPRZ);
    }

    @Override
    public void setZfoglamprz(String value) {
        String oldValue = this.getZfoglamprz();
        this.dgtATRow.setValue(COL_NAME_ZFOGLAMPRZ, value);
        pcs.firePropertyChange(PROP_NAME_ZFOGLAMPRZ, oldValue, value);
    }

    @Override
    public String getZfoglamprzok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZFOGLAMPRZOK);
    }

    @Override
    public void setZfoglamprzok(String value) {
        String oldValue = this.getZfoglamprzok();
        this.dgtATRow.setValue(COL_NAME_ZFOGLAMPRZOK, value);
        pcs.firePropertyChange(PROP_NAME_ZFOGLAMPRZOK, oldValue, value);
    }

    @Override
    public String getZhighbeamintensityl() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMINTENSITYL);
    }

    @Override
    public void setZhighbeamintensityl(String value) {
        String oldValue = this.getZhighbeamintensityl();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMINTENSITYL, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMINTENSITYL, oldValue, value);
    }

    @Override
    public String getZhighbeamintensitylok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMINTENSITYLOK);
    }

    @Override
    public void setZhighbeamintensitylok(String value) {
        String oldValue = this.getZhighbeamintensitylok();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMINTENSITYLOK, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMINTENSITYLOK, oldValue, value);
    }

    @Override
    public String getZhighbeamintensityr() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMINTENSITYR);
    }

    @Override
    public void setZhighbeamintensityr(String value) {
        String oldValue = this.getZhighbeamintensityr();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMINTENSITYR, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMINTENSITYR, oldValue, value);
    }

    @Override
    public String getZhighbeamintensityrok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMINTENSITYROK);
    }

    @Override
    public void setZhighbeamintensityrok(String value) {
        String oldValue = this.getZhighbeamintensityrok();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMINTENSITYROK, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMINTENSITYROK, oldValue, value);
    }

    @Override
    public String getZhighbeamly() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMLY);
    }

    @Override
    public void setZhighbeamly(String value) {
        String oldValue = this.getZhighbeamly();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMLY, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMLY, oldValue, value);
    }

    @Override
    public String getZhighbeamlyok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMLYOK);
    }

    @Override
    public void setZhighbeamlyok(String value) {
        String oldValue = this.getZhighbeamlyok();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMLYOK, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMLYOK, oldValue, value);
    }

    @Override
    public String getZhighbeamlz() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMLZ);
    }

    @Override
    public void setZhighbeamlz(String value) {
        String oldValue = this.getZhighbeamlz();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMLZ, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMLZ, oldValue, value);
    }

    @Override
    public String getZhighbeamlzok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMLZOK);
    }

    @Override
    public void setZhighbeamlzok(String value) {
        String oldValue = this.getZhighbeamlzok();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMLZOK, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMLZOK, oldValue, value);
    }

    @Override
    public String getZhighbeamry() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMRY);
    }

    @Override
    public void setZhighbeamry(String value) {
        String oldValue = this.getZhighbeamry();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMRY, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMRY, oldValue, value);
    }

    @Override
    public String getZhighbeamryok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMRYOK);
    }

    @Override
    public void setZhighbeamryok(String value) {
        String oldValue = this.getZhighbeamryok();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMRYOK, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMRYOK, oldValue, value);
    }

    @Override
    public String getZhighbeamrz() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMRZ);
    }

    @Override
    public void setZhighbeamrz(String value) {
        String oldValue = this.getZhighbeamrz();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMRZ, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMRZ, oldValue, value);
    }

    @Override
    public String getZhighbeamrzok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZHIGHBEAMRZOK);
    }

    @Override
    public void setZhighbeamrzok(String value) {
        String oldValue = this.getZhighbeamrzok();
        this.dgtATRow.setValue(COL_NAME_ZHIGHBEAMRZOK, value);
        pcs.firePropertyChange(PROP_NAME_ZHIGHBEAMRZOK, oldValue, value);
    }

    @Override
    public String getZlineno() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLINENO);
    }

    @Override
    public void setZlineno(String value) {
        String oldValue = this.getZlineno();
        this.dgtATRow.setValue(COL_NAME_ZLINENO, value);
        pcs.firePropertyChange(PROP_NAME_ZLINENO, oldValue, value);
    }

    @Override
    public String getZlowbeamly() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMLY);
    }

    @Override
    public void setZlowbeamly(String value) {
        String oldValue = this.getZlowbeamly();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMLY, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMLY, oldValue, value);
    }

    @Override
    public String getZlowbeamlyok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMLYOK);
    }

    @Override
    public void setZlowbeamlyok(String value) {
        String oldValue = this.getZlowbeamlyok();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMLYOK, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMLYOK, oldValue, value);
    }

    @Override
    public String getZlowbeamlz() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMLZ);
    }

    @Override
    public void setZlowbeamlz(String value) {
        String oldValue = this.getZlowbeamlz();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMLZ, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMLZ, oldValue, value);
    }

    @Override
    public String getZlowbeamlzok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMLZOK);
    }

    @Override
    public void setZlowbeamlzok(String value) {
        String oldValue = this.getZlowbeamlzok();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMLZOK, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMLZOK, oldValue, value);
    }

    @Override
    public String getZlowbeamry() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMRY);
    }

    @Override
    public void setZlowbeamry(String value) {
        String oldValue = this.getZlowbeamry();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMRY, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMRY, oldValue, value);
    }

    @Override
    public String getZlowbeamryok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMRYOK);
    }

    @Override
    public void setZlowbeamryok(String value) {
        String oldValue = this.getZlowbeamryok();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMRYOK, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMRYOK, oldValue, value);
    }

    @Override
    public String getZlowbeamrz() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMRZ);
    }

    @Override
    public void setZlowbeamrz(String value) {
        String oldValue = this.getZlowbeamrz();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMRZ, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMRZ, oldValue, value);
    }

    @Override
    public String getZlowbeamrzok() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZLOWBEAMRZOK);
    }

    @Override
    public void setZlowbeamrzok(String value) {
        String oldValue = this.getZlowbeamrzok();
        this.dgtATRow.setValue(COL_NAME_ZLOWBEAMRZOK, value);
        pcs.firePropertyChange(PROP_NAME_ZLOWBEAMRZOK, oldValue, value);
    }

    @Override
    public String getZoverallresult() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZOVERALLRESULT);
    }

    @Override
    public void setZoverallresult(String value) {
        String oldValue = this.getZoverallresult();
        this.dgtATRow.setValue(COL_NAME_ZOVERALLRESULT, value);
        pcs.firePropertyChange(PROP_NAME_ZOVERALLRESULT, oldValue, value);
    }

    @Override
    public String getZplant() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZPLANT);
    }

    @Override
    public void setZplant(String value) {
        String oldValue = this.getZplant();
        this.dgtATRow.setValue(COL_NAME_ZPLANT, value);
        pcs.firePropertyChange(PROP_NAME_ZPLANT, oldValue, value);
    }

    @Override
    public String getZvin() {
        return (String) this.dgtATRow.getValue(COL_NAME_ZVIN);
    }

    @Override
    public void setZvin(String value) {
        String oldValue = this.getZvin();
        this.dgtATRow.setValue(COL_NAME_ZVIN, value);
        pcs.firePropertyChange(PROP_NAME_ZVIN, oldValue, value);
    }

    // CHECKSTYLE:MethodNameCheck:off
    @Override
    public void Save(Time time, String comment, AccessPrivilege accessPrivilege) throws DatasweepException {
        // Check if attached reference is valid:
        Response res = new Response();
        if (res.isError()) {
            throw new DatasweepException(res);
        }
        // okay, save here.
        super.Save(time, comment, accessPrivilege);
    }
     // CHECKSTYLE:MethodNameCheck:on
     
}
