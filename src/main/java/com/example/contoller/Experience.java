package com.example.contoller;

import com.example.model.Education;
import com.example.service.EducationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Experience {

    private EducationService educationService;

    public Experience(EducationService educationService) {
        this.educationService = educationService;
    }

    @RequestMapping(value = "/experience", method = RequestMethod.GET)
    public String getExperience(Model model){
        List<Education> educationList = educationService.getAll();
        model.addAttribute("education", educationList);
        return "resume/resume";
    }

    @RequestMapping(value = "/addNewEducation", method = RequestMethod.GET)
    public String getAddNewEducation(Model model){
        List<Education> educationList = educationService.getAll();
        model.addAttribute("education", educationList);
        return  "resume/addNewEducation";
    }
    @RequestMapping(value = "/addNewEducation", method = RequestMethod.POST)
    public RedirectView postNewEducation(@ModelAttribute Education newEducation){
        educationService.saveNewEducation(newEducation);
        return new RedirectView("/experience");

    }


    @RequestMapping(value = "/editEducation", method = RequestMethod.GET)
    public String getEditEducation(Model model){
        List<Education> educationList = educationService.getAll();
        model.addAttribute("education", educationList);
        return  "resume/editEducation";
    }

    @RequestMapping(value = "/editEducation/{id}", method = RequestMethod.POST)
    public RedirectView postEditEducation(@PathVariable("id") Long id, @ModelAttribute Education education){
       educationService.editEducation(education,id);
        return  new RedirectView("/experience");
    }




}
