package org.dspace.xmlworkflow.storedcomponents;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.EPerson;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(InProgressUser.class)
public abstract class InProgressUser_ {

	public static volatile SingularAttribute<InProgressUser, EPerson> ePerson;
	public static volatile SingularAttribute<InProgressUser, Boolean> finished;
	public static volatile SingularAttribute<InProgressUser, Integer> id;
	public static volatile SingularAttribute<InProgressUser, XmlWorkflowItem> workflowItem;

	public static final String E_PERSON = "ePerson";
	public static final String FINISHED = "finished";
	public static final String ID = "id";
	public static final String WORKFLOW_ITEM = "workflowItem";

}

