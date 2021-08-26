package org.dspace.checker;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Bitstream;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(MostRecentChecksum.class)
public abstract class MostRecentChecksum_ {

	public static volatile SingularAttribute<MostRecentChecksum, String> currentChecksum;
	public static volatile SingularAttribute<MostRecentChecksum, Boolean> matchedPrevChecksum;
	public static volatile SingularAttribute<MostRecentChecksum, String> expectedChecksum;
	public static volatile SingularAttribute<MostRecentChecksum, Boolean> toBeProcessed;
	public static volatile SingularAttribute<MostRecentChecksum, Date> processEndDate;
	public static volatile SingularAttribute<MostRecentChecksum, ChecksumResult> checksumResult;
	public static volatile SingularAttribute<MostRecentChecksum, Bitstream> bitstream;
	public static volatile SingularAttribute<MostRecentChecksum, String> checksumAlgorithm;
	public static volatile SingularAttribute<MostRecentChecksum, Date> processStartDate;

	public static final String CURRENT_CHECKSUM = "currentChecksum";
	public static final String MATCHED_PREV_CHECKSUM = "matchedPrevChecksum";
	public static final String EXPECTED_CHECKSUM = "expectedChecksum";
	public static final String TO_BE_PROCESSED = "toBeProcessed";
	public static final String PROCESS_END_DATE = "processEndDate";
	public static final String CHECKSUM_RESULT = "checksumResult";
	public static final String BITSTREAM = "bitstream";
	public static final String CHECKSUM_ALGORITHM = "checksumAlgorithm";
	public static final String PROCESS_START_DATE = "processStartDate";

}

