package com.example.repository;

import com.example.model.Education;
import com.example.model.Skill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EducationRepository extends JpaRepository<Education,Long> {

    List<Education> findAll();
    Skill save(Skill skillEntity);



}
