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



    public void saveNewEducation(Education education){
        educationRepository.save(education);
    }

    public void editEducation(Education inputEducation, Long id){
        Education editedEducation = educationRepository.findById(id).get();

        editedEducation.setFieldOfStudy(inputEducation.getFieldOfStudy());
        editedEducation.setStartAndEndOfStudy(inputEducation.getStartAndEndOfStudy());
        editedEducation.setUniversityName(inputEducation.getUniversityName());

        educationRepository.save(editedEducation);
    }

    public void deleteEducation(Long id){
        educationRepository.deleteById(id);
    }



}
