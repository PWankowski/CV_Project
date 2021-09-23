package com.example.service;

import com.example.model.Education;
import com.example.repository.EducationRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EducationService {

    private final EducationRepository educationRepository;

    public EducationService(EducationRepository educationRepository) {
        this.educationRepository = educationRepository;
    }

    public List<Education> getAll(){
        return educationRepository.findAll();
    }

    public Education getOne(Long id){
        return  educationRepository.findById(id).orElse(null);
    }

    public void saveNewEducation(Education education){
        educationRepository.save(education);
    }



}
