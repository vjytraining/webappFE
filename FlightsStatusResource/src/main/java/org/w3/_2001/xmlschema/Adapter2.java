//
// Generated By:JAX-WS RI 2.2.9-b130926.1035 (JAXB RI IBM 2.2.8-b130911.1802)
//


package org.w3._2001.xmlschema;

import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter2
    extends XmlAdapter<String, Integer>
{


    public Integer unmarshal(String value) {
        return ((int)javax.xml.bind.DatatypeConverter.parseInt(value));
    }

    public String marshal(Integer value) {
        if (value == null) {
            return null;
        }
        return (javax.xml.bind.DatatypeConverter.printInt((int)(int)value));
    }

}