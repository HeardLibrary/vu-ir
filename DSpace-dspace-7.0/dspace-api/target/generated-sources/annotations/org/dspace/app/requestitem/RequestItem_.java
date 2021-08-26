package org.dspace.app.requestitem;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Bitstream;
import org.dspace.content.Item;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(RequestItem.class)
public abstract class RequestItem_ {

	public static volatile SingularAttribute<RequestItem, String> reqEmail;
	public static volatile SingularAttribute<RequestItem, Date> decision_date;
	public static volatile SingularAttribute<RequestItem, Item> item;
	public static volatile SingularAttribute<RequestItem, Date> expires;
	public static volatile SingularAttribute<RequestItem, String> reqName;
	public static volatile SingularAttribute<RequestItem, String> reqMessage;
	public static volatile SingularAttribute<RequestItem, Date> request_date;
	public static volatile SingularAttribute<RequestItem, Bitstream> bitstream;
	public static volatile SingularAttribute<RequestItem, Boolean> allfiles;
	public static volatile SingularAttribute<RequestItem, Boolean> accept_request;
	public static volatile SingularAttribute<RequestItem, Integer> requestitem_id;
	public static volatile SingularAttribute<RequestItem, String> token;

	public static final String REQ_EMAIL = "reqEmail";
	public static final String DECISION_DATE = "decision_date";
	public static final String ITEM = "item";
	public static final String EXPIRES = "expires";
	public static final String REQ_NAME = "reqName";
	public static final String REQ_MESSAGE = "reqMessage";
	public static final String REQUEST_DATE = "request_date";
	public static final String BITSTREAM = "bitstream";
	public static final String ALLFILES = "allfiles";
	public static final String ACCEPT_REQUEST = "accept_request";
	public static final String REQUESTITEM_ID = "requestitem_id";
	public static final String TOKEN = "token";

}

