package com.rahul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RegisterController {

    @PostMapping("/registerUser")
    public String registerUser(
            @RequestParam("role") String role,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("gender") String gender,
            @RequestParam("mobile") String mobile,
            RedirectAttributes redirectAttributes) {

        // 1. Data Capture (Console par print hoga, debug karne ke liye)
        System.out.println("--- Registering New User ---");
        System.out.println("Role: " + role);
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Mobile: " + mobile);

        // TODO: Yahan aapki Database Service call aayegi (User save karne ke liye)
        // User user = new User(role, name, email, password, gender, mobile);
        // userService.saveUser(user);

        // 2. Redirect with success message
        // RedirectAttributes 'addFlashAttribute' ka use karke hum message ko 
        // redirect hone ke baad bhi login page tak carry kar sakte hain.
        redirectAttributes.addFlashAttribute("success", "Account created successfully! Please login.");
        
        return "redirect:/login"; 
    }
}