//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.3.2 
// See <a href="https://javaee.github.io/jaxb-v2/">https://javaee.github.io/jaxb-v2/</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2021.08.23 at 12:02:50 PM CDT 
//


package org.dspace.workflow;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * 
 * 		The taskset-map element maps collection handles to
 * 		tasksets enumerated in the 'tasksets' element.  The
 * 		special collection-handle 'default' is matched when a
 * 		collection is not otherwise mapped.  The special
 * 		taskset name 'none' indicates no taskset to perform.
 * 	    
 * 
 * <p>Java class for taskset-map-type complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="taskset-map-type"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="mapping" type="{https://dspace.org/workflow-curation}mapping-type" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "taskset-map-type", namespace = "https://dspace.org/workflow-curation", propOrder = {
    "mapping"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
public class TasksetMapType {

    @XmlElement(namespace = "https://dspace.org/workflow-curation")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    protected List<MappingType> mapping;

    /**
     * Gets the value of the mapping property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the mapping property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getMapping().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link MappingType }
     * 
     * 
     */
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
    public List<MappingType> getMapping() {
        if (mapping == null) {
            mapping = new ArrayList<MappingType>();
        }
        return this.mapping;
    }

}