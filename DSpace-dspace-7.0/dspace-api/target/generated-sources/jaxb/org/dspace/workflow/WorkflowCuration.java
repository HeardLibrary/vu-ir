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
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;all&gt;
 *         &lt;element name="taskset-map" type="{https://dspace.org/workflow-curation}taskset-map-type"/&gt;
 *         &lt;element name="tasksets" type="{https://dspace.org/workflow-curation}tasksets-type"/&gt;
 *       &lt;/all&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {

})
@XmlRootElement(name = "workflow-curation", namespace = "https://dspace.org/workflow-curation")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
public class WorkflowCuration {

    @XmlElement(name = "taskset-map", namespace = "https://dspace.org/workflow-curation", required = true)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    protected TasksetMapType tasksetMap;
    @XmlElement(namespace = "https://dspace.org/workflow-curation", required = true)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    protected TasksetsType tasksets;

    /**
     * Gets the value of the tasksetMap property.
     * 
     * @return
     *     possible object is
     *     {@link TasksetMapType }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public TasksetMapType getTasksetMap() {
        return tasksetMap;
    }

    /**
     * Sets the value of the tasksetMap property.
     * 
     * @param value
     *     allowed object is
     *     {@link TasksetMapType }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public void setTasksetMap(TasksetMapType value) {
        this.tasksetMap = value;
    }

    /**
     * Gets the value of the tasksets property.
     * 
     * @return
     *     possible object is
     *     {@link TasksetsType }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public TasksetsType getTasksets() {
        return tasksets;
    }

    /**
     * Sets the value of the tasksets property.
     * 
     * @param value
     *     allowed object is
     *     {@link TasksetsType }
     *     
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public void setTasksets(TasksetsType value) {
        this.tasksets = value;
    }

}