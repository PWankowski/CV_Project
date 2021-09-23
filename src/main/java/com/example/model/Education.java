package com.example.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Education {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String fieldOfStudy;
    private String startAndEndOfStudy;
    private String universityName;

    public Education() {
    }

    public Education(Long id, String fieldOfStudy, String startAndEndOfStudy, String universityName) {
        this.id = id;
        this.fieldOfStudy = fieldOfStudy;
        this.startAndEndOfStudy = startAndEndOfStudy;
        this.universityName = universityName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFieldOfStudy() {
        return fieldOfStudy;
    }

    public void setFieldOfStudy(String fieldOfStudy) {
        this.fieldOfStudy = fieldOfStudy;
    }

    public String getStartAndEndOfStudy() {
        return startAndEndOfStudy;
    }

    public void setStartAndEndOfStudy(String startAndEndOfStudy) {
        this.startAndEndOfStudy = startAndEndOfStudy;
    }

    public String getUniversityName() {
        return universityName;
    }

    public void setUniversityName(String universityName) {
        this.universityName = universityName;
    }
}
