package org.dspace.xmlworkflow.storedcomponents;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.EPerson;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ClaimedTask.class)
public abstract class ClaimedTask_ {

	public static volatile SingularAttribute<ClaimedTask, EPerson> owner;
	public static volatile SingularAttribute<ClaimedTask, String> stepId;
	public static volatile SingularAttribute<ClaimedTask, String> actionId;
	public static volatile SingularAttribute<ClaimedTask, Integer> id;
	public static volatile SingularAttribute<ClaimedTask, XmlWorkflowItem> workflowItem;
	public static volatile SingularAttribute<ClaimedTask, String> workflowId;

	public static final String OWNER = "owner";
	public static final String STEP_ID = "stepId";
	public static final String ACTION_ID = "actionId";
	public static final String ID = "id";
	public static final String WORKFLOW_ITEM = "workflowItem";
	public static final String WORKFLOW_ID = "workflowId";

}

