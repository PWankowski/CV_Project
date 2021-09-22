package com.example.contoller;

import com.example.model.Skill;
import com.example.service.SkillService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class AboutMe {


    private final SkillService skillService;

    public AboutMe(SkillService skillService) {
        this.skillService = skillService;
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getAboutMe(Model model){
        List<Skill> skillList = skillService.getAll();
        model.addAttribute("skill", skillList);
        return "about/about";
    }

    @RequestMapping(value = "/addSkills", method = RequestMethod.GET)
    public String getAddSkills(Model model){
        List<Skill> skillList = skillService.getAll();
        model.addAttribute("skill", skillList);
        return "about/addSkills";
    }
    @RequestMapping(value = "/addSkills", method = RequestMethod.POST)
    public RedirectView postAddSkills(@ModelAttribute Skill newSkill){
        skillService.addSkill(newSkill);
        return new RedirectView("/about");
    }

    @RequestMapping(value = "/editSkills", method = RequestMethod.GET)
    public String getEditSkillList(Model model){
        List<Skill> skillList = skillService.getAll();
        model.addAttribute("skill", skillList);
        return "about/editSkills";
    }

    @RequestMapping(value = "/editSkills/{id}", method = RequestMethod.POST)
    public RedirectView saveEditSkill(@PathVariable("id") Long id, @ModelAttribute Skill editedSkill){
        skillService.editSkill(editedSkill, id);
        return new RedirectView("/about");
    }

    @RequestMapping(value = "/deleteEditSkills/{id}", method = RequestMethod.POST)
    public RedirectView deleteSkill(@PathVariable Long id){
        skillService.deleteSkill(id);
        return new RedirectView("/editSkills");
    }



}
