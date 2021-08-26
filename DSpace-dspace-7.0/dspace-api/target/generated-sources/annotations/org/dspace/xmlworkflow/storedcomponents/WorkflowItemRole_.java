package org.dspace.xmlworkflow.storedcomponents;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.EPerson;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(WorkflowItemRole.class)
public abstract class WorkflowItemRole_ {

	public static volatile SingularAttribute<WorkflowItemRole, String> roleId;
	public static volatile SingularAttribute<WorkflowItemRole, EPerson> ePerson;
	public static volatile SingularAttribute<WorkflowItemRole, Integer> id;
	public static volatile SingularAttribute<WorkflowItemRole, XmlWorkflowItem> workflowItem;
	public static volatile SingularAttribute<WorkflowItemRole, Group> group;

	public static final String ROLE_ID = "roleId";
	public static final String E_PERSON = "ePerson";
	public static final String ID = "id";
	public static final String WORKFLOW_ITEM = "workflowItem";
	public static final String GROUP = "group";

}

