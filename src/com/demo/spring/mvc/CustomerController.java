package com.demo.spring.mvc;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.validation.Valid;

@Controller
public class CustomerController {

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
        dataBinder.registerCustomEditor(String.class,"firstName", new CustomerNameEditor());
    }


    @RequestMapping("/customerForm")
    public String showForm(Model theModel){
        theModel.addAttribute("customer",new Customer());
        return "customer-form";
    }

    @RequestMapping("/customerProcessForm")
    public String processForm(@Valid @ModelAttribute("customer") Customer theCustomer,
                              BindingResult bindingResult){
//        System.out.println("theStudent: |" + theCustomer.getLastName()+"|");
        if(bindingResult.hasErrors()){
            return "customer-form";
        }
        else {
            System.out.println("theStudent: |" + theCustomer.getLastName()+"|");
            return "customer-configuration";
        }
    }
}
