package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Bundle.class)
public abstract class Bundle_ extends org.dspace.content.DSpaceObject_ {

	public static volatile SingularAttribute<Bundle, Bitstream> primaryBitstream;
	public static volatile SingularAttribute<Bundle, Integer> legacyId;
	public static volatile ListAttribute<Bundle, Bitstream> bitstreams;
	public static volatile ListAttribute<Bundle, Item> items;

	public static final String PRIMARY_BITSTREAM = "primaryBitstream";
	public static final String LEGACY_ID = "legacyId";
	public static final String BITSTREAMS = "bitstreams";
	public static final String ITEMS = "items";

}

