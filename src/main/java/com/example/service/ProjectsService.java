package com.example.service;

import com.example.model.Projects;
import com.example.repository.ProjectsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectsService {

    private ProjectsRepository projectsRepository;

    public ProjectsService(ProjectsRepository portfolioRepository) {
        this.projectsRepository = portfolioRepository;
    }

    public List<Projects> getAll(){
        return projectsRepository.findAll();
    }

    public void addProject(Projects inputProject){
        projectsRepository.save(inputProject);
    }

    public void editProject(Projects project, Long id){

        Projects editedProject = projectsRepository.findById(id).get();

        editedProject.setProjectName(project.getProjectName());
        editedProject.setGitHub(project.getGitHub());

        projectsRepository.save(editedProject);
    }

    public void deleteProject(Long id){
        projectsRepository.deleteById(id);
    }



}
