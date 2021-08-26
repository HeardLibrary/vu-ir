package org.dspace.app.util;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(WebApp.class)
public abstract class WebApp_ {

	public static volatile SingularAttribute<WebApp, String> appName;
	public static volatile SingularAttribute<WebApp, Date> started;
	public static volatile SingularAttribute<WebApp, Integer> id;
	public static volatile SingularAttribute<WebApp, String> url;
	public static volatile SingularAttribute<WebApp, Integer> isui;

	public static final String APP_NAME = "appName";
	public static final String STARTED = "started";
	public static final String ID = "id";
	public static final String URL = "url";
	public static final String ISUI = "isui";

}

