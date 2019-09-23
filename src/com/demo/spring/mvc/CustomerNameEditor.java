package com.demo.spring.mvc;

import java.beans.PropertyEditorSupport;

public class CustomerNameEditor extends PropertyEditorSupport {

    @Override
    public void setAsText(String firstname) throws IllegalArgumentException {
        if(firstname.contains("Mr.") || firstname.contains("Ms.")){
            setValue(firstname);
        }
        else {
            firstname = "Ms. "+ firstname;
            setValue(firstname);
        }
    }
}