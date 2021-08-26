package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(MetadataField.class)
public abstract class MetadataField_ {

	public static volatile SingularAttribute<MetadataField, MetadataSchema> metadataSchema;
	public static volatile SingularAttribute<MetadataField, String> qualifier;
	public static volatile SingularAttribute<MetadataField, Integer> id;
	public static volatile SingularAttribute<MetadataField, String> element;
	public static volatile SingularAttribute<MetadataField, String> scopeNote;

	public static final String METADATA_SCHEMA = "metadataSchema";
	public static final String QUALIFIER = "qualifier";
	public static final String ID = "id";
	public static final String ELEMENT = "element";
	public static final String SCOPE_NOTE = "scopeNote";

}

