package com.demo.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

    @RequestMapping("/studentForm")
    public String showForm(Model theModel){
//        create a student object
        Student theStudent = new Student();
//        add student object to the model
        theModel.addAttribute("student",theStudent);
        return "student-form";

    }

    @RequestMapping("/studentProcessForm")
    public String processForm(@ModelAttribute("student") Student theStudent){
//        log the input data
        System.out.println("theStudent: " + theStudent.getFirstName()
                + " " + theStudent.getLastName());
        return "student-confirmation";
    }
}
