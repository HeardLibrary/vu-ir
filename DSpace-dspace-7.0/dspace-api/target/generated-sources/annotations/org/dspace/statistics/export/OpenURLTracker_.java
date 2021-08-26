package org.dspace.statistics.export;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(OpenURLTracker.class)
public abstract class OpenURLTracker_ {

	public static volatile SingularAttribute<OpenURLTracker, Date> uploadDate;
	public static volatile SingularAttribute<OpenURLTracker, Integer> id;
	public static volatile SingularAttribute<OpenURLTracker, String> url;

	public static final String UPLOAD_DATE = "uploadDate";
	public static final String ID = "id";
	public static final String URL = "url";

}

