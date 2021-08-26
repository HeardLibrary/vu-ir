package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Community.class)
public abstract class Community_ extends org.dspace.content.DSpaceObject_ {

	public static volatile SetAttribute<Community, Community> subCommunities;
	public static volatile SetAttribute<Community, Collection> collections;
	public static volatile SetAttribute<Community, Community> parentCommunities;
	public static volatile SingularAttribute<Community, Integer> legacyId;
	public static volatile SingularAttribute<Community, Bitstream> logo;
	public static volatile SingularAttribute<Community, Group> admins;

	public static final String SUB_COMMUNITIES = "subCommunities";
	public static final String COLLECTIONS = "collections";
	public static final String PARENT_COMMUNITIES = "parentCommunities";
	public static final String LEGACY_ID = "legacyId";
	public static final String LOGO = "logo";
	public static final String ADMINS = "admins";

}

