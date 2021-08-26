package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Collection.class)
public abstract class Collection_ extends org.dspace.content.DSpaceObject_ {

	public static volatile SingularAttribute<Collection, Item> template;
	public static volatile SingularAttribute<Collection, Integer> legacyId;
	public static volatile SingularAttribute<Collection, Bitstream> logo;
	public static volatile SingularAttribute<Collection, Group> submitters;
	public static volatile SingularAttribute<Collection, Group> admins;
	public static volatile SetAttribute<Collection, Community> communities;

	public static final String TEMPLATE = "template";
	public static final String LEGACY_ID = "legacyId";
	public static final String LOGO = "logo";
	public static final String SUBMITTERS = "submitters";
	public static final String ADMINS = "admins";
	public static final String COMMUNITIES = "communities";

}

