package com.sanskar.collegeAdmin.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sanskar.collegeAdmin.entities.Student;
import com.sanskar.collegeAdmin.repositories.StudentRepository;

@Service
public class StudentService {
  
	private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Student getStudentById(Long id) {
        return studentRepository.findById(id).orElse(null);
    }

    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    public void deleteStudent(Long id) {
        studentRepository.deleteById(id);
    }

}
