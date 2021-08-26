package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(WorkspaceItem.class)
public abstract class WorkspaceItem_ {

	public static volatile SingularAttribute<WorkspaceItem, Item> item;
	public static volatile SingularAttribute<WorkspaceItem, Boolean> multipleTitles;
	public static volatile SingularAttribute<WorkspaceItem, Integer> workspaceItemId;
	public static volatile ListAttribute<WorkspaceItem, Group> supervisorGroups;
	public static volatile SingularAttribute<WorkspaceItem, Collection> collection;
	public static volatile SingularAttribute<WorkspaceItem, Integer> stageReached;
	public static volatile SingularAttribute<WorkspaceItem, Integer> pageReached;
	public static volatile SingularAttribute<WorkspaceItem, Boolean> publishedBefore;
	public static volatile SingularAttribute<WorkspaceItem, Boolean> multipleFiles;

	public static final String ITEM = "item";
	public static final String MULTIPLE_TITLES = "multipleTitles";
	public static final String WORKSPACE_ITEM_ID = "workspaceItemId";
	public static final String SUPERVISOR_GROUPS = "supervisorGroups";
	public static final String COLLECTION = "collection";
	public static final String STAGE_REACHED = "stageReached";
	public static final String PAGE_REACHED = "pageReached";
	public static final String PUBLISHED_BEFORE = "publishedBefore";
	public static final String MULTIPLE_FILES = "multipleFiles";

}

