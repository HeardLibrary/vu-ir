//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.3.2 
// See <a href="https://javaee.github.io/jaxb-v2/">https://javaee.github.io/jaxb-v2/</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2021.08.26 at 08:37:16 AM CDT 
//


package org.dspace.workflow;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;


/**
 * <p>Java class for taskset-type complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="taskset-type"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="flowstep" type="{https://dspace.org/workflow-curation}flowstep-type" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="name" use="required" type="{http://www.w3.org/2001/XMLSchema}ID" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "taskset-type", namespace = "https://dspace.org/workflow-curation", propOrder = {
    "flowstep"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-26T08:37:16-05:00", comments = "JAXB RI v2.3.2")
public class TasksetType {

    @XmlElement(namespace = "https://dspace.org/workflow-curation")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-26T08:37:16-05:00", comments = "JAXB RI v2.3.2")
    protected List<FlowstepType> flowstep;
    @XmlAttribute(name = "name", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlID
    @XmlSchemaType(name = "ID")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-26T08:37:16-05:00", comments = "JAXB RI v2.3.2")
    protected String name;

    /**
     * Gets the value of the flowstep property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the flowstep property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getFlowstep().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link FlowstepType }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-26T08:37:16-05:00", comments = "JAXB RI v2.3.2")
    public List<FlowstepType> getFlowstep() {
        if (flowstep == null) {
            flowstep = new ArrayList<FlowstepType>();
        }
        return this.flowstep;
    }

    /**
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-26T08:37:16-05:00", comments = "JAXB RI v2.3.2")
    public String getName() {
        return name;
    }

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-26T08:37:16-05:00", comments = "JAXB RI v2.3.2")
    public void setName(String value) {
        this.name = value;
    }

}
