package com.rahul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

@Controller
public class AuthController {

    // Login Page dikhane ke liye
    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

    // Login Form Submit handle karne ke liye (Corrected with @RequestParam names)
    @PostMapping("/login")
    public String loginUser(
            @RequestParam("role") String role, 
            @RequestParam("email") String email, 
            @RequestParam("password") String password, 
            Model model) {
        
        // Console par check karne ke liye print karo
        System.out.println("Login Attempt: " + email + " as " + role);

        // TODO: Yahan aapki Authentication logic aayegi
        // Agar login successful hua toh role-based dashboard par bhejenge
        
        return "redirect:/" + role; 
    }

    // Register Page dikhane ke liye
    @GetMapping("/register")
    public String showRegisterPage() {
        return "register";
    }

    // Forgot Password page dikhane ke liye
    @GetMapping("/forget")
    public String forget() {
        return "forgot-password";
    }
}