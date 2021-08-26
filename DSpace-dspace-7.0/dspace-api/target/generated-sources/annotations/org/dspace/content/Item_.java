package org.dspace.content;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.eperson.EPerson;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Item.class)
public abstract class Item_ extends org.dspace.content.DSpaceObject_ {

	public static volatile SingularAttribute<Item, EPerson> submitter;
	public static volatile SingularAttribute<Item, Collection> owningCollection;
	public static volatile SetAttribute<Item, Collection> collections;
	public static volatile SingularAttribute<Item, Boolean> discoverable;
	public static volatile ListAttribute<Item, Bundle> bundles;
	public static volatile SingularAttribute<Item, Boolean> withdrawn;
	public static volatile SingularAttribute<Item, Integer> legacyId;
	public static volatile SingularAttribute<Item, Boolean> inArchive;
	public static volatile SingularAttribute<Item, Collection> templateItemOf;
	public static volatile SingularAttribute<Item, Date> lastModified;

	public static final String SUBMITTER = "submitter";
	public static final String OWNING_COLLECTION = "owningCollection";
	public static final String COLLECTIONS = "collections";
	public static final String DISCOVERABLE = "discoverable";
	public static final String BUNDLES = "bundles";
	public static final String WITHDRAWN = "withdrawn";
	public static final String LEGACY_ID = "legacyId";
	public static final String IN_ARCHIVE = "inArchive";
	public static final String TEMPLATE_ITEM_OF = "templateItemOf";
	public static final String LAST_MODIFIED = "lastModified";

}

