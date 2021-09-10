package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutMe {


    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getAboutMe(){
        return "about/about";
    }

}
