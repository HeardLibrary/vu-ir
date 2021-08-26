package org.dspace.eperson;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.WorkspaceItem;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Group.class)
public abstract class Group_ extends org.dspace.content.DSpaceObject_ {

	public static volatile ListAttribute<Group, EPerson> epeople;
	public static volatile ListAttribute<Group, Group> parentGroups;
	public static volatile SingularAttribute<Group, Boolean> permanent;
	public static volatile SingularAttribute<Group, String> name;
	public static volatile SingularAttribute<Group, Integer> legacyId;
	public static volatile ListAttribute<Group, Group> groups;
	public static volatile ListAttribute<Group, WorkspaceItem> supervisedItems;

	public static final String EPEOPLE = "epeople";
	public static final String PARENT_GROUPS = "parentGroups";
	public static final String PERMANENT = "permanent";
	public static final String NAME = "name";
	public static final String LEGACY_ID = "legacyId";
	public static final String GROUPS = "groups";
	public static final String SUPERVISED_ITEMS = "supervisedItems";

}

