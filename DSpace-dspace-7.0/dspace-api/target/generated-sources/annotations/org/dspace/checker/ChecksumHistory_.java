package org.dspace.checker;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Bitstream;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ChecksumHistory.class)
public abstract class ChecksumHistory_ {

	public static volatile SingularAttribute<ChecksumHistory, Date> processEndDate;
	public static volatile SingularAttribute<ChecksumHistory, String> checksumExpected;
	public static volatile SingularAttribute<ChecksumHistory, String> checksumCalculated;
	public static volatile SingularAttribute<ChecksumHistory, ChecksumResult> checksumResult;
	public static volatile SingularAttribute<ChecksumHistory, Long> id;
	public static volatile SingularAttribute<ChecksumHistory, Bitstream> bitstream;
	public static volatile SingularAttribute<ChecksumHistory, Date> processStartDate;

	public static final String PROCESS_END_DATE = "processEndDate";
	public static final String CHECKSUM_EXPECTED = "checksumExpected";
	public static final String CHECKSUM_CALCULATED = "checksumCalculated";
	public static final String CHECKSUM_RESULT = "checksumResult";
	public static final String ID = "id";
	public static final String BITSTREAM = "bitstream";
	public static final String PROCESS_START_DATE = "processStartDate";

}

