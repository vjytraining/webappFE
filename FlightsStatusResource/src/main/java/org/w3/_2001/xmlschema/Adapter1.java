//
// Generated By:JAX-WS RI 2.2.9-b130926.1035 (JAXB RI IBM 2.2.8-b130911.1802)
//


package org.w3._2001.xmlschema;

import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter1
    extends XmlAdapter<String, Long>
{


    public Long unmarshal(String value) {
        return ((long)javax.xml.bind.DatatypeConverter.parseLong(value));
    }

    public String marshal(Long value) {
        if (value == null) {
            return null;
        }
        return (javax.xml.bind.DatatypeConverter.printLong((long)(long)value));
    }

}