// CHECKSTYLE:FileLength:off (reason: generated)
// CHECKSTYLE:LineLength:off (reason: generated)
// CHECKSTYLE:MethodLength:off (reason: generated)
package ... tbd ... // TODO Please specify package name;

/**
 * This file was generated by ATDefAccessClassGenerator and FMPP 2.3.15
 *
 * Please do not modify this file manually !!
 */
import java.util.List;

import com.datasweep.compatibility.client.ATRowFilter;
import com.datasweep.compatibility.client.DatasweepException;
import com.datasweep.compatibility.client.Server;
import com.rockwell.mes.commons.base.ifc.objects.MESATObject;
import com.rockwell.mes.commons.base.ifc.services.PCContext;

import ... tbd ... // TODO Please specify package name.IMESASIMAdasDetection;
import ... tbd ... // TODO Please specify package name.IMESASIMAdasDetectionFilter;
import ... tbd ... // TODO Please specify package name.IMESGeneratedASIMAdasDetectionFilter;
import ... tbd ... // TODO Please specify package name.MESASIMAdasDetection;


/**
 * Generated filter class for application table AS_IM_AdasDetection.
 */
public class MESGeneratedASIMAdasDetectionFilter extends ATRowFilter implements IMESGeneratedASIMAdasDetectionFilter {

    /** Generated attribute definition */
    private static final long serialVersionUID = 1L;

    /** Generated attribute definition */
    protected static final String ATDEFINITION_NAME = "AS_IM_AdasDetection";

    /**
     * Generated constructor
     *
     * @param server The Server object
     */
    public MESGeneratedASIMAdasDetectionFilter(Server server) {
        super(server, ATDEFINITION_NAME);
    }

    /**
     * Generated default constructor
     */
    public MESGeneratedASIMAdasDetectionFilter() {
        this(PCContext.getServerImpl());
    }

    @Override
    public List<IMESASIMAdasDetection> getFilteredObjects() {
        return MESATObject.getFilteredMESATObjectList(this, MESASIMAdasDetection.class);
    }

    @Override
    public IMESASIMAdasDetectionFilter forAccContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ACC, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ACC, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ACC, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ACC, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAcchorangleContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ACCHORANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAcchorangleEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ACCHORANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAcchorangleNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ACCHORANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAcchorangleStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ACCHORANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccverangleContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ACCVERANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccverangleEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ACCVERANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccverangleNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ACCVERANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forAccverangleStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ACCVERANGLE, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forBsdContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_BSD, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forBsdEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_BSD, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forBsdNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_BSD, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forBsdStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_BSD, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forLkaContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_LKA, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forLkaEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_LKA, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forLkaNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_LKA, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forLkaStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_LKA, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZlinenoContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ZLINENO, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZlinenoEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZLINENO, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZlinenoNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZLINENO, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZlinenoStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ZLINENO, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZoverallresultContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ZOVERALLRESULT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZoverallresultEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZOVERALLRESULT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZoverallresultNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZOVERALLRESULT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZoverallresultStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ZOVERALLRESULT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZplantContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ZPLANT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZplantEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZPLANT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZplantNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZPLANT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZplantStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ZPLANT, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZvinContaining(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameContaining(MESGeneratedASIMAdasDetection.COL_NAME_ZVIN, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZvinEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZVIN, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZvinNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameNotEqualTo(MESGeneratedASIMAdasDetection.COL_NAME_ZVIN, value);
    }
    @Override
    public IMESASIMAdasDetectionFilter forZvinStartingWith(String value) throws DatasweepException {
        return (IMESASIMAdasDetectionFilter) forColumnNameStartingWith(MESGeneratedASIMAdasDetection.COL_NAME_ZVIN, value);
    }
}
