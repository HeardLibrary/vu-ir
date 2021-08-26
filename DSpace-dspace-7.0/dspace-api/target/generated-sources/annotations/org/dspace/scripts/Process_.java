package org.dspace.scripts;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Bitstream;
import org.dspace.content.ProcessStatus;
import org.dspace.eperson.EPerson;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Process.class)
public abstract class Process_ {

	public static volatile SingularAttribute<Process, ProcessStatus> processStatus;
	public static volatile SingularAttribute<Process, Date> creationTime;
	public static volatile SingularAttribute<Process, Integer> processId;
	public static volatile SingularAttribute<Process, EPerson> ePerson;
	public static volatile SingularAttribute<Process, String> name;
	public static volatile SingularAttribute<Process, Date> finishedTime;
	public static volatile SingularAttribute<Process, Date> startTime;
	public static volatile SingularAttribute<Process, String> parameters;
	public static volatile ListAttribute<Process, Bitstream> bitstreams;

	public static final String PROCESS_STATUS = "processStatus";
	public static final String CREATION_TIME = "creationTime";
	public static final String PROCESS_ID = "processId";
	public static final String E_PERSON = "ePerson";
	public static final String NAME = "name";
	public static final String FINISHED_TIME = "finishedTime";
	public static final String START_TIME = "startTime";
	public static final String PARAMETERS = "parameters";
	public static final String BITSTREAMS = "bitstreams";

}

