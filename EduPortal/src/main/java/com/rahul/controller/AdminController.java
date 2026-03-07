package com.rahul.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
    @GetMapping("/admin")
    public String adminDashboard() { return "admin-dashboard"; }
    
    // Add all your admin-manage, add, edit mappings here...
    @GetMapping("/admin-manage-students")
    public String adminManageStudents() { return "admin-manage-students"; }
    // ... baaki saare admin mappings
}