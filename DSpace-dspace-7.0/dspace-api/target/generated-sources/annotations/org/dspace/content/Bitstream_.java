package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Bitstream.class)
public abstract class Bitstream_ extends org.dspace.content.DSpaceObject_ {

	public static volatile SingularAttribute<Bitstream, String> internalId;
	public static volatile SingularAttribute<Bitstream, BitstreamFormat> bitstreamFormat;
	public static volatile SingularAttribute<Bitstream, Integer> storeNumber;
	public static volatile SingularAttribute<Bitstream, Boolean> deleted;
	public static volatile ListAttribute<Bitstream, Bundle> bundles;
	public static volatile SingularAttribute<Bitstream, String> checksum;
	public static volatile SingularAttribute<Bitstream, Integer> legacyId;
	public static volatile SingularAttribute<Bitstream, String> checksumAlgorithm;
	public static volatile SingularAttribute<Bitstream, Collection> collection;
	public static volatile SingularAttribute<Bitstream, Community> community;
	public static volatile SingularAttribute<Bitstream, Integer> sequenceId;
	public static volatile SingularAttribute<Bitstream, Long> sizeBytes;

	public static final String INTERNAL_ID = "internalId";
	public static final String BITSTREAM_FORMAT = "bitstreamFormat";
	public static final String STORE_NUMBER = "storeNumber";
	public static final String DELETED = "deleted";
	public static final String BUNDLES = "bundles";
	public static final String CHECKSUM = "checksum";
	public static final String LEGACY_ID = "legacyId";
	public static final String CHECKSUM_ALGORITHM = "checksumAlgorithm";
	public static final String COLLECTION = "collection";
	public static final String COMMUNITY = "community";
	public static final String SEQUENCE_ID = "sequenceId";
	public static final String SIZE_BYTES = "sizeBytes";

}

