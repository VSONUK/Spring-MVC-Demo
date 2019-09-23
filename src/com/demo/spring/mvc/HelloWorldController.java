package com.demo.spring.mvc;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;

@Controller
//@RequestMapping("/hello")
public class HelloWorldController {
//    need a controller method to show the initial HTML form
    @RequestMapping("/showForm")
    public String showForm(){
        return "helloWorldForm";
    }
//    need a controller method to the process the Html form
    @RequestMapping("/processFormVersionOne")
    public String processForm(){
        return "helloWorld";
    }
//    new a controller method to read form data and add data to the model
    @RequestMapping("/processFormVersionTwo")
    public String letShoutDude(HttpServletRequest request, Model model){
//        read the request parameter from the HTML form
        String theName = request.getParameter("studentName");
//        send the data to the jsp
        request.setAttribute("name",theName);
//        convert the data to all caps
        theName = theName.toUpperCase();
//        create the message
        String result = "YO! " + theName;
//        add message to the model
        model.addAttribute("message",result);
        return "helloWorld";
    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName") String theName, Model model){
//        convert the data to all caps
        theName = theName.toUpperCase();
//        create the message
        String result = "YO! HOO! HOO! " + theName;
//        add message to the model
        model.addAttribute("message",result);
        return "helloWorld";
    }
}
