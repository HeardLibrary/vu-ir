package org.dspace.eperson;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Collection;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Subscription.class)
public abstract class Subscription_ {

	public static volatile SingularAttribute<Subscription, EPerson> ePerson;
	public static volatile SingularAttribute<Subscription, Integer> id;
	public static volatile SingularAttribute<Subscription, Collection> collection;

	public static final String E_PERSON = "ePerson";
	public static final String ID = "id";
	public static final String COLLECTION = "collection";

}

