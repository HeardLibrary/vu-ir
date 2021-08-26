package org.dspace.xmlworkflow.storedcomponents;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Collection;
import org.dspace.eperson.Group;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CollectionRole.class)
public abstract class CollectionRole_ {

	public static volatile SingularAttribute<CollectionRole, String> roleId;
	public static volatile SingularAttribute<CollectionRole, Integer> id;
	public static volatile SingularAttribute<CollectionRole, Collection> collection;
	public static volatile SingularAttribute<CollectionRole, Group> group;

	public static final String ROLE_ID = "roleId";
	public static final String ID = "id";
	public static final String COLLECTION = "collection";
	public static final String GROUP = "group";

}

