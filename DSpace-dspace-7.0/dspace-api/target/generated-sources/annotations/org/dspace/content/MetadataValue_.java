package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(MetadataValue.class)
public abstract class MetadataValue_ {

	public static volatile SingularAttribute<MetadataValue, String> authority;
	public static volatile SingularAttribute<MetadataValue, Integer> confidence;
	public static volatile SingularAttribute<MetadataValue, DSpaceObject> dSpaceObject;
	public static volatile SingularAttribute<MetadataValue, String> language;
	public static volatile SingularAttribute<MetadataValue, Integer> id;
	public static volatile SingularAttribute<MetadataValue, Integer> place;
	public static volatile SingularAttribute<MetadataValue, MetadataField> metadataField;
	public static volatile SingularAttribute<MetadataValue, String> value;

	public static final String AUTHORITY = "authority";
	public static final String CONFIDENCE = "confidence";
	public static final String D_SPACE_OBJECT = "dSpaceObject";
	public static final String LANGUAGE = "language";
	public static final String ID = "id";
	public static final String PLACE = "place";
	public static final String METADATA_FIELD = "metadataField";
	public static final String VALUE = "value";

}

