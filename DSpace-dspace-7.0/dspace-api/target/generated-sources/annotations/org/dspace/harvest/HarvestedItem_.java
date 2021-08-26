package org.dspace.harvest;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Item;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(HarvestedItem.class)
public abstract class HarvestedItem_ {

	public static volatile SingularAttribute<HarvestedItem, Date> lastHarvested;
	public static volatile SingularAttribute<HarvestedItem, Item> item;
	public static volatile SingularAttribute<HarvestedItem, Integer> id;
	public static volatile SingularAttribute<HarvestedItem, String> oaiId;

	public static final String LAST_HARVESTED = "lastHarvested";
	public static final String ITEM = "item";
	public static final String ID = "id";
	public static final String OAI_ID = "oaiId";

}

