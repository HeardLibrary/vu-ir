package org.dspace.xmlworkflow.storedcomponents;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import org.dspace.content.Collection;
import org.dspace.content.Item;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(XmlWorkflowItem.class)
public abstract class XmlWorkflowItem_ {

	public static volatile SingularAttribute<XmlWorkflowItem, Item> item;
	public static volatile SingularAttribute<XmlWorkflowItem, Boolean> multipleTitles;
	public static volatile SingularAttribute<XmlWorkflowItem, Integer> id;
	public static volatile SingularAttribute<XmlWorkflowItem, Collection> collection;
	public static volatile SingularAttribute<XmlWorkflowItem, Boolean> publishedBefore;
	public static volatile SingularAttribute<XmlWorkflowItem, Boolean> multipleFiles;

	public static final String ITEM = "item";
	public static final String MULTIPLE_TITLES = "multipleTitles";
	public static final String ID = "id";
	public static final String COLLECTION = "collection";
	public static final String PUBLISHED_BEFORE = "publishedBefore";
	public static final String MULTIPLE_FILES = "multipleFiles";

}

