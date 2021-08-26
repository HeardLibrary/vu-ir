package org.dspace.handle;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.DSpaceObject;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Handle.class)
public abstract class Handle_ {

	public static volatile SingularAttribute<Handle, DSpaceObject> dso;
	public static volatile SingularAttribute<Handle, Integer> resourceTypeId;
	public static volatile SingularAttribute<Handle, String> handle;
	public static volatile SingularAttribute<Handle, Integer> id;

	public static final String DSO = "dso";
	public static final String RESOURCE_TYPE_ID = "resourceTypeId";
	public static final String HANDLE = "handle";
	public static final String ID = "id";

}

