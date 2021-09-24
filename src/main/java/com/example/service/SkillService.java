package com.example.service;

import com.example.model.Skill;
import com.example.repository.SkillRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SkillService {


    private  final SkillRepository skillRepository;

    public SkillService(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    public List<Skill> getAll() {
        return skillRepository.findAll();
    }

    public void addSkill(Skill newSkill){
        skillRepository.saveAndFlush(newSkill);
    }

    public void deleteSkill(Long id){
        skillRepository.deleteById(id);
    }

    public void editSkill(Skill skill, Long id){

        Skill editSkill = skillRepository.findById(id).get();

        editSkill.setName(skill.getName());
        editSkill.setValue(skill.getValue());

        skillRepository.save(editSkill);
    }



}
