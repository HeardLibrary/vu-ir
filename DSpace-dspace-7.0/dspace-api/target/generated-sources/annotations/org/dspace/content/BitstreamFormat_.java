package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(BitstreamFormat.class)
public abstract class BitstreamFormat_ {

	public static volatile ListAttribute<BitstreamFormat, String> fileExtensions;
	public static volatile SingularAttribute<BitstreamFormat, Boolean> internal;
	public static volatile SingularAttribute<BitstreamFormat, String> description;
	public static volatile SingularAttribute<BitstreamFormat, String> mimetype;
	public static volatile SingularAttribute<BitstreamFormat, Integer> id;
	public static volatile SingularAttribute<BitstreamFormat, String> shortDescription;
	public static volatile SingularAttribute<BitstreamFormat, Integer> supportLevel;

	public static final String FILE_EXTENSIONS = "fileExtensions";
	public static final String INTERNAL = "internal";
	public static final String DESCRIPTION = "description";
	public static final String MIMETYPE = "mimetype";
	public static final String ID = "id";
	public static final String SHORT_DESCRIPTION = "shortDescription";
	public static final String SUPPORT_LEVEL = "supportLevel";

}

