package com.sanskar.collegeAdmin.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sanskar.collegeAdmin.entities.Faculty;
import com.sanskar.collegeAdmin.repositories.FacultyRepository;

@Service
public class FacultyService {
  
	private final FacultyRepository facultyRepository;

    public FacultyService(FacultyRepository facultyRepository) {
        this.facultyRepository = facultyRepository;
    }

    public List<Faculty> getAllFaculties() {
        return facultyRepository.findAll();
    }

    public Faculty getFacultyById(Long id) {
        return facultyRepository.findById(id).orElse(null);
    }

    public Faculty saveFaculty(Faculty faculty) {
        return facultyRepository.save(faculty);
    }

    public void deleteFaculty(Long id) {
        facultyRepository.deleteById(id);
    }
}
