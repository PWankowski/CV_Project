package com.example.contoller;

import com.example.model.Skill;
import com.example.repository.SkillRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class AboutMe {

    private final SkillRepository skillRepository;

    public AboutMe(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getAboutMe(Model model){
        List<Skill> skillList = skillRepository.findAll();
        model.addAttribute("skill", skillList);
        return "about/about";
    }

    @RequestMapping(value = "/addSkills", method = RequestMethod.GET)
    public String getAddSkills(Model model){
        List<Skill> skillList = skillRepository.findAll();
        model.addAttribute("skill", skillList);
        return "about/addSkills";
    }

    @RequestMapping(value = "/editSkills", method = RequestMethod.GET)
    public String getEditSkills(){
        return "about/editSkills";
    }

    @RequestMapping(value = "/addSkills", method = RequestMethod.POST)
    public RedirectView postAddSkills(@ModelAttribute Skill newSkill){
        skillRepository.save(newSkill);
        return new RedirectView("/about");
    }


}
