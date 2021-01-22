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

import ... tbd ... // TODO Please specify package name.IMESASIMOrderCL;
import ... tbd ... // TODO Please specify package name.IMESASIMOrderCLFilter;
import ... tbd ... // TODO Please specify package name.IMESGeneratedASIMOrderCLFilter;
import ... tbd ... // TODO Please specify package name.MESASIMOrderCL;

import com.datasweep.compatibility.ui.Time;

/**
 * Generated filter class for application table AS_IM_OrderCL.
 */
public class MESGeneratedASIMOrderCLFilter extends ATRowFilter implements IMESGeneratedASIMOrderCLFilter {

    /** Generated attribute definition */
    private static final long serialVersionUID = 1L;

    /** Generated attribute definition */
    protected static final String ATDEFINITION_NAME = "AS_IM_OrderCL";

    /**
     * Generated constructor
     *
     * @param server The Server object
     */
    public MESGeneratedASIMOrderCLFilter(Server server) {
        super(server, ATDEFINITION_NAME);
    }

    /**
     * Generated default constructor
     */
    public MESGeneratedASIMOrderCLFilter() {
        this(PCContext.getServerImpl());
    }

    @Override
    public List<IMESASIMOrderCL> getFilteredObjects() {
        return MESATObject.getFilteredMESATObjectList(this, MESASIMOrderCL.class);
    }

    @Override
    public IMESASIMOrderCLFilter forLineContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_LINE, value);
    }
    @Override
    public IMESASIMOrderCLFilter forLineEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_LINE, value);
    }
    @Override
    public IMESASIMOrderCLFilter forLineNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_LINE, value);
    }
    @Override
    public IMESASIMOrderCLFilter forLineStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_LINE, value);
    }
    @Override
    public IMESASIMOrderCLFilter forModelContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_MODEL, value);
    }
    @Override
    public IMESASIMOrderCLFilter forModelEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_MODEL, value);
    }
    @Override
    public IMESASIMOrderCLFilter forModelNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_MODEL, value);
    }
    @Override
    public IMESASIMOrderCLFilter forModelStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_MODEL, value);
    }
    @Override
    public IMESASIMOrderCLFilter forOrdernumContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_ORDERNUM, value);
    }
    @Override
    public IMESASIMOrderCLFilter forOrdernumEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_ORDERNUM, value);
    }
    @Override
    public IMESASIMOrderCLFilter forOrdernumNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_ORDERNUM, value);
    }
    @Override
    public IMESASIMOrderCLFilter forOrdernumStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_ORDERNUM, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPasstimeEqualTo(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_PASSTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPasstimeGreaterThanOrEqualTo(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameGreaterThanOrEqualTo(MESGeneratedASIMOrderCL.COL_NAME_PASSTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPasstimeLessThan(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameLessThan(MESGeneratedASIMOrderCL.COL_NAME_PASSTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPasstimeNotEqualTo(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_PASSTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPlantContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_PLANT, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPlantEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_PLANT, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPlantNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_PLANT, value);
    }
    @Override
    public IMESASIMOrderCLFilter forPlantStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_PLANT, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendstatusEqualTo(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_SENDSTATUS, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendstatusGreaterThanOrEqualTo(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameGreaterThanOrEqualTo(MESGeneratedASIMOrderCL.COL_NAME_SENDSTATUS, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendstatusLessThan(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameLessThan(MESGeneratedASIMOrderCL.COL_NAME_SENDSTATUS, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendstatusNotEqualTo(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_SENDSTATUS, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendtimeEqualTo(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_SENDTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendtimeGreaterThanOrEqualTo(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameGreaterThanOrEqualTo(MESGeneratedASIMOrderCL.COL_NAME_SENDTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendtimeLessThan(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameLessThan(MESGeneratedASIMOrderCL.COL_NAME_SENDTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forSendtimeNotEqualTo(Time value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_SENDTIME, value);
    }
    @Override
    public IMESASIMOrderCLFilter forStationContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_STATION, value);
    }
    @Override
    public IMESASIMOrderCLFilter forStationEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_STATION, value);
    }
    @Override
    public IMESASIMOrderCLFilter forStationNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_STATION, value);
    }
    @Override
    public IMESASIMOrderCLFilter forStationStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_STATION, value);
    }
    @Override
    public IMESASIMOrderCLFilter forTsnContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_TSN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forTsnEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_TSN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forTsnNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_TSN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forTsnStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_TSN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forVinContaining(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameContaining(MESGeneratedASIMOrderCL.COL_NAME_VIN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forVinEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_VIN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forVinNotEqualTo(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_VIN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forVinStartingWith(String value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameStartingWith(MESGeneratedASIMOrderCL.COL_NAME_VIN, value);
    }
    @Override
    public IMESASIMOrderCLFilter forWorkorderEqualTo(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameEqualTo(MESGeneratedASIMOrderCL.COL_NAME_WORKORDER, value);
    }
    @Override
    public IMESASIMOrderCLFilter forWorkorderGreaterThanOrEqualTo(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameGreaterThanOrEqualTo(MESGeneratedASIMOrderCL.COL_NAME_WORKORDER, value);
    }
    @Override
    public IMESASIMOrderCLFilter forWorkorderLessThan(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameLessThan(MESGeneratedASIMOrderCL.COL_NAME_WORKORDER, value);
    }
    @Override
    public IMESASIMOrderCLFilter forWorkorderNotEqualTo(Long value) throws DatasweepException {
        return (IMESASIMOrderCLFilter) forColumnNameNotEqualTo(MESGeneratedASIMOrderCL.COL_NAME_WORKORDER, value);
    }
}
