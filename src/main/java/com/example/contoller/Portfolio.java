package com.example.contoller;

import com.example.model.Projects;
import com.example.service.ProjectsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Portfolio {

    private final ProjectsService projectsService;

    public Portfolio(ProjectsService projectsService) {
        this.projectsService = projectsService;
    }

    @RequestMapping(value = "/portfolio", method = RequestMethod.GET)
    public String getPortfolio(Model model){
        List<Projects> projectsList = projectsService.getAll();
        model.addAttribute("project",projectsList);
        return "portfolio/portfolio";
    }
    @RequestMapping(value = "/addNewProject", method = RequestMethod.GET)
    public String getAddNewProject(){
        return "portfolio/addNewProject";
    }
    @RequestMapping(value = "/editProject", method = RequestMethod.GET)
    public String getEditProject(){
        return "portfolio/editProject";
    }



    @RequestMapping(value = "/addNewProject", method = RequestMethod.POST)
    public RedirectView postAddProject(@ModelAttribute Projects project){
        projectsService.addProject(project);
        return new RedirectView("/portfolio");
    }







}
