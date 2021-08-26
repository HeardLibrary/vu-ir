package org.dspace.eperson;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(RegistrationData.class)
public abstract class RegistrationData_ {

	public static volatile SingularAttribute<RegistrationData, Date> expires;
	public static volatile SingularAttribute<RegistrationData, Integer> id;
	public static volatile SingularAttribute<RegistrationData, String> email;
	public static volatile SingularAttribute<RegistrationData, String> token;

	public static final String EXPIRES = "expires";
	public static final String ID = "id";
	public static final String EMAIL = "email";
	public static final String TOKEN = "token";

}

