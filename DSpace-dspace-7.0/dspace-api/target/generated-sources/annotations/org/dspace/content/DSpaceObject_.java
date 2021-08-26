package org.dspace.content;

import java.util.UUID;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.authorize.ResourcePolicy;
import org.dspace.handle.Handle;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(DSpaceObject.class)
public abstract class DSpaceObject_ {

	public static volatile ListAttribute<DSpaceObject, Handle> handles;
	public static volatile ListAttribute<DSpaceObject, MetadataValue> metadata;
	public static volatile ListAttribute<DSpaceObject, ResourcePolicy> resourcePolicies;
	public static volatile SingularAttribute<DSpaceObject, UUID> id;

	public static final String HANDLES = "handles";
	public static final String METADATA = "metadata";
	public static final String RESOURCE_POLICIES = "resourcePolicies";
	public static final String ID = "id";

}

