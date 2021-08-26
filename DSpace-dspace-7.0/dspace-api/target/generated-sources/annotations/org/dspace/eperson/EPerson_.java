package org.dspace.eperson;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(EPerson.class)
public abstract class EPerson_ extends org.dspace.content.DSpaceObject_ {

	public static volatile SingularAttribute<EPerson, Boolean> canLogIn;
	public static volatile SingularAttribute<EPerson, String> password;
	public static volatile SingularAttribute<EPerson, String> salt;
	public static volatile SingularAttribute<EPerson, Date> lastActive;
	public static volatile SingularAttribute<EPerson, String> sessionSalt;
	public static volatile SingularAttribute<EPerson, String> netid;
	public static volatile SingularAttribute<EPerson, Boolean> requireCertificate;
	public static volatile SingularAttribute<EPerson, Integer> legacyId;
	public static volatile ListAttribute<EPerson, Group> groups;
	public static volatile SingularAttribute<EPerson, String> digestAlgorithm;
	public static volatile SingularAttribute<EPerson, String> email;
	public static volatile SingularAttribute<EPerson, Boolean> selfRegistered;

	public static final String CAN_LOG_IN = "canLogIn";
	public static final String PASSWORD = "password";
	public static final String SALT = "salt";
	public static final String LAST_ACTIVE = "lastActive";
	public static final String SESSION_SALT = "sessionSalt";
	public static final String NETID = "netid";
	public static final String REQUIRE_CERTIFICATE = "requireCertificate";
	public static final String LEGACY_ID = "legacyId";
	public static final String GROUPS = "groups";
	public static final String DIGEST_ALGORITHM = "digestAlgorithm";
	public static final String EMAIL = "email";
	public static final String SELF_REGISTERED = "selfRegistered";

}

