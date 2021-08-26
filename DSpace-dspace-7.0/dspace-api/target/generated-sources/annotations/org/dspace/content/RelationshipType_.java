package org.dspace.content;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.RelationshipType.Tilted;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(RelationshipType.class)
public abstract class RelationshipType_ {

	public static volatile SingularAttribute<RelationshipType, Tilted> tilted;
	public static volatile SingularAttribute<RelationshipType, Integer> rightMaxCardinality;
	public static volatile SingularAttribute<RelationshipType, Integer> leftMaxCardinality;
	public static volatile SingularAttribute<RelationshipType, String> leftwardType;
	public static volatile SingularAttribute<RelationshipType, Integer> rightMinCardinality;
	public static volatile SingularAttribute<RelationshipType, Boolean> copyToLeft;
	public static volatile SingularAttribute<RelationshipType, String> rightwardType;
	public static volatile SingularAttribute<RelationshipType, Integer> id;
	public static volatile SingularAttribute<RelationshipType, EntityType> leftType;
	public static volatile SingularAttribute<RelationshipType, Integer> leftMinCardinality;
	public static volatile SingularAttribute<RelationshipType, Boolean> copyToRight;
	public static volatile SingularAttribute<RelationshipType, EntityType> rightType;

	public static final String TILTED = "tilted";
	public static final String RIGHT_MAX_CARDINALITY = "rightMaxCardinality";
	public static final String LEFT_MAX_CARDINALITY = "leftMaxCardinality";
	public static final String LEFTWARD_TYPE = "leftwardType";
	public static final String RIGHT_MIN_CARDINALITY = "rightMinCardinality";
	public static final String COPY_TO_LEFT = "copyToLeft";
	public static final String RIGHTWARD_TYPE = "rightwardType";
	public static final String ID = "id";
	public static final String LEFT_TYPE = "leftType";
	public static final String LEFT_MIN_CARDINALITY = "leftMinCardinality";
	public static final String COPY_TO_RIGHT = "copyToRight";
	public static final String RIGHT_TYPE = "rightType";

}

