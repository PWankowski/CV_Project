package com.example.repository;

import com.example.model.Projects;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public interface ProjectsRepository extends JpaRepository<Projects, Long> {

    List<Projects> findAll();
    Projects save(Projects skillEntity);

}
