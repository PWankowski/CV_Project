package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Experience {

    @RequestMapping(value = "/experience", method = RequestMethod.GET)
    public String getExperience(){
        return "resume";
    }
}
