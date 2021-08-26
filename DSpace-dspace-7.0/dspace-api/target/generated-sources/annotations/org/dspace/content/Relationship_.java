package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Relationship.class)
public abstract class Relationship_ {

	public static volatile SingularAttribute<Relationship, Item> leftItem;
	public static volatile SingularAttribute<Relationship, RelationshipType> relationshipType;
	public static volatile SingularAttribute<Relationship, String> leftwardValue;
	public static volatile SingularAttribute<Relationship, Integer> rightPlace;
	public static volatile SingularAttribute<Relationship, String> rightwardValue;
	public static volatile SingularAttribute<Relationship, Integer> id;
	public static volatile SingularAttribute<Relationship, Item> rightItem;
	public static volatile SingularAttribute<Relationship, Integer> leftPlace;

	public static final String LEFT_ITEM = "leftItem";
	public static final String RELATIONSHIP_TYPE = "relationshipType";
	public static final String LEFTWARD_VALUE = "leftwardValue";
	public static final String RIGHT_PLACE = "rightPlace";
	public static final String RIGHTWARD_VALUE = "rightwardValue";
	public static final String ID = "id";
	public static final String RIGHT_ITEM = "rightItem";
	public static final String LEFT_PLACE = "leftPlace";

}

