package com.sanskar.collegeAdmin.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanskar.collegeAdmin.entities.Admin;
import com.sanskar.collegeAdmin.repositories.AdminRepository;

@Service
public class AdminService {
  
	private final AdminRepository adminRepository;

    @Autowired
    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    public List<Admin> getAllAdmins() {
        return adminRepository.findAll();
    }

    public Admin getAdminById(Long id) {
        return adminRepository.findById(id).orElse(null);
    }

    public void saveAdmin(Admin admin) {
        adminRepository.save(admin);
    }

    public void deleteAdmin(Long id) {
        adminRepository.deleteById(id);
    }

} 
