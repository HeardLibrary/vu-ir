package org.dspace.harvest;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Collection;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(HarvestedCollection.class)
public abstract class HarvestedCollection_ {

	public static volatile SingularAttribute<HarvestedCollection, Date> lastHarvested;
	public static volatile SingularAttribute<HarvestedCollection, String> oaiSource;
	public static volatile SingularAttribute<HarvestedCollection, Integer> harvestStatus;
	public static volatile SingularAttribute<HarvestedCollection, String> metadataConfigId;
	public static volatile SingularAttribute<HarvestedCollection, String> harvestMessage;
	public static volatile SingularAttribute<HarvestedCollection, Date> harvestStartTime;
	public static volatile SingularAttribute<HarvestedCollection, Integer> id;
	public static volatile SingularAttribute<HarvestedCollection, Collection> collection;
	public static volatile SingularAttribute<HarvestedCollection, String> oaiSetId;
	public static volatile SingularAttribute<HarvestedCollection, Integer> harvestType;

	public static final String LAST_HARVESTED = "lastHarvested";
	public static final String OAI_SOURCE = "oaiSource";
	public static final String HARVEST_STATUS = "harvestStatus";
	public static final String METADATA_CONFIG_ID = "metadataConfigId";
	public static final String HARVEST_MESSAGE = "harvestMessage";
	public static final String HARVEST_START_TIME = "harvestStartTime";
	public static final String ID = "id";
	public static final String COLLECTION = "collection";
	public static final String OAI_SET_ID = "oaiSetId";
	public static final String HARVEST_TYPE = "harvestType";

}

