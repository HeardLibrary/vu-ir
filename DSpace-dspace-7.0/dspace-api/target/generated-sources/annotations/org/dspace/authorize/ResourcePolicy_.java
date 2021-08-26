package org.dspace.authorize;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.DSpaceObject;
import org.dspace.eperson.EPerson;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ResourcePolicy.class)
public abstract class ResourcePolicy_ {

	public static volatile SingularAttribute<ResourcePolicy, Group> epersonGroup;
	public static volatile SingularAttribute<ResourcePolicy, String> rptype;
	public static volatile SingularAttribute<ResourcePolicy, EPerson> eperson;
	public static volatile SingularAttribute<ResourcePolicy, Date> endDate;
	public static volatile SingularAttribute<ResourcePolicy, Integer> resourceTypeId;
	public static volatile SingularAttribute<ResourcePolicy, DSpaceObject> dSpaceObject;
	public static volatile SingularAttribute<ResourcePolicy, String> rpdescription;
	public static volatile SingularAttribute<ResourcePolicy, Integer> actionId;
	public static volatile SingularAttribute<ResourcePolicy, Integer> id;
	public static volatile SingularAttribute<ResourcePolicy, Date> startDate;
	public static volatile SingularAttribute<ResourcePolicy, String> rpname;

	public static final String EPERSON_GROUP = "epersonGroup";
	public static final String RPTYPE = "rptype";
	public static final String EPERSON = "eperson";
	public static final String END_DATE = "endDate";
	public static final String RESOURCE_TYPE_ID = "resourceTypeId";
	public static final String D_SPACE_OBJECT = "dSpaceObject";
	public static final String RPDESCRIPTION = "rpdescription";
	public static final String ACTION_ID = "actionId";
	public static final String ID = "id";
	public static final String START_DATE = "startDate";
	public static final String RPNAME = "rpname";

}

