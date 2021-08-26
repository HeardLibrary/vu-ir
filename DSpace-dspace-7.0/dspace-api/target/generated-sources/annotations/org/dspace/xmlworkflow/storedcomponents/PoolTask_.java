package org.dspace.xmlworkflow.storedcomponents;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.EPerson;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(PoolTask.class)
public abstract class PoolTask_ {

	public static volatile SingularAttribute<PoolTask, EPerson> ePerson;
	public static volatile SingularAttribute<PoolTask, String> stepId;
	public static volatile SingularAttribute<PoolTask, String> actionId;
	public static volatile SingularAttribute<PoolTask, Integer> id;
	public static volatile SingularAttribute<PoolTask, XmlWorkflowItem> workflowItem;
	public static volatile SingularAttribute<PoolTask, String> workflowId;
	public static volatile SingularAttribute<PoolTask, Group> group;

	public static final String E_PERSON = "ePerson";
	public static final String STEP_ID = "stepId";
	public static final String ACTION_ID = "actionId";
	public static final String ID = "id";
	public static final String WORKFLOW_ITEM = "workflowItem";
	public static final String WORKFLOW_ID = "workflowId";
	public static final String GROUP = "group";

}

