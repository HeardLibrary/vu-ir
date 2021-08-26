package org.dspace.identifier;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.DSpaceObject;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(DOI.class)
public abstract class DOI_ {

	public static volatile SingularAttribute<DOI, Integer> resourceTypeId;
	public static volatile SingularAttribute<DOI, DSpaceObject> dSpaceObject;
	public static volatile SingularAttribute<DOI, Integer> id;
	public static volatile SingularAttribute<DOI, String> doi;
	public static volatile SingularAttribute<DOI, Integer> status;

	public static final String RESOURCE_TYPE_ID = "resourceTypeId";
	public static final String D_SPACE_OBJECT = "dSpaceObject";
	public static final String ID = "id";
	public static final String DOI = "doi";
	public static final String STATUS = "status";

}

