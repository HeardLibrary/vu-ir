package org.dspace.versioning;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Item;
import org.dspace.eperson.EPerson;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Version.class)
public abstract class Version_ {

	public static volatile SingularAttribute<Version, String> summary;
	public static volatile SingularAttribute<Version, Item> item;
	public static volatile SingularAttribute<Version, VersionHistory> versionHistory;
	public static volatile SingularAttribute<Version, EPerson> ePerson;
	public static volatile SingularAttribute<Version, Integer> id;
	public static volatile SingularAttribute<Version, Date> versionDate;
	public static volatile SingularAttribute<Version, Integer> versionNumber;

	public static final String SUMMARY = "summary";
	public static final String ITEM = "item";
	public static final String VERSION_HISTORY = "versionHistory";
	public static final String E_PERSON = "ePerson";
	public static final String ID = "id";
	public static final String VERSION_DATE = "versionDate";
	public static final String VERSION_NUMBER = "versionNumber";

}

