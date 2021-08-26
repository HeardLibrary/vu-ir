package org.dspace.versioning;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(VersionHistory.class)
public abstract class VersionHistory_ {

	public static volatile ListAttribute<VersionHistory, Version> versions;
	public static volatile SingularAttribute<VersionHistory, Integer> id;

	public static final String VERSIONS = "versions";
	public static final String ID = "id";

}

