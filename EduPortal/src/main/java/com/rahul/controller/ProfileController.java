package com.rahul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/student") // Student group ke andar hi profile hai
public class ProfileController {

    // 1. Profile Page Load karne ke liye
    @GetMapping("/profile")
    public String showProfile(Model model) {
        // Yahan aap database se user ki details fetch karenge
        // model.addAttribute("student", studentService.findById(1));
        return "student/student-profile"; // Path: WEB-INF/views/student/student-profile.jsp
    }

    // 2. Profile Update karne ke liye
    @PostMapping("/update-profile")
    public String updateProfile(
            @RequestParam("name") String name,
            @RequestParam("mobile") String mobile) {
        
        // Yahan aapki database update logic aayegi
        // studentService.updateProfile(name, mobile);
        
        System.out.println("Updating Profile -> Name: " + name + ", Mobile: " + mobile);
        
        // Redirect use karein taaki refresh karne par form dubara submit na ho
        return "redirect:/student/profile?success";
    }
}