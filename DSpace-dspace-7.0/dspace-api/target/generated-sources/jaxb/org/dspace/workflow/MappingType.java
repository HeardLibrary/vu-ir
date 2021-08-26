//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.3.2 
// See <a href="https://javaee.github.io/jaxb-v2/">https://javaee.github.io/jaxb-v2/</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2021.08.23 at 12:02:50 PM CDT 
//


package org.dspace.workflow;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for mapping-type complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="mapping-type"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;attribute name="collection-handle" use="required" type="{https://dspace.org/workflow-curation}collection-handle-type" /&gt;
 *       &lt;attribute name="taskset" use="required" type="{http://www.w3.org/2001/XMLSchema}IDREF" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "mapping-type", namespace = "https://dspace.org/workflow-curation")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
public class MappingType {

    @XmlAttribute(name = "collection-handle", required = true)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    protected String collectionHandle;
    @XmlAttribute(name = "taskset", required = true)
    @XmlIDREF
    @XmlSchemaType(name = "IDREF")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    protected TasksetType taskset;

    /**
     * Gets the value of the collectionHandle property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public String getCollectionHandle() {
        return collectionHandle;
    }

    /**
     * Sets the value of the collectionHandle property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public void setCollectionHandle(String value) {
        this.collectionHandle = value;
    }

    /**
     * Gets the value of the taskset property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public TasksetType getTaskset() {
        return taskset;
    }

    /**
     * Sets the value of the taskset property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public void setTaskset(TasksetType value) {
        this.taskset = value;
    }

}
