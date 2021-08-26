//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.3.2 
// See <a href="https://javaee.github.io/jaxb-v2/">https://javaee.github.io/jaxb-v2/</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2021.08.23 at 12:02:50 PM CDT 
//


package org.dspace.workflow;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for condition-type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="condition-type"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}token"&gt;
 *     &lt;enumeration value="success"/&gt;
 *     &lt;enumeration value="fail"/&gt;
 *     &lt;enumeration value="error"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "condition-type", namespace = "https://dspace.org/workflow-curation")
@XmlEnum
@Generated(value = "com.sun.tools.xjc.Driver", date = "2021-08-23T12:02:50-05:00", comments = "JAXB RI v2.3.2")
public enum ConditionType {

    @XmlEnumValue("success")
    SUCCESS("success"),
    @XmlEnumValue("fail")
    FAIL("fail"),
    @XmlEnumValue("error")
    ERROR("error");
    private final String value;

    ConditionType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static ConditionType fromValue(String v) {
        for (ConditionType c: ConditionType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
