package com.gmail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.gmail.model.User;
import com.gmail.service.EmailService;

@Controller
public class UserController {

    private final EmailService emailService;

    public UserController(EmailService emailService) {
        this.emailService = emailService;
    }

    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("user", new User());
        return "User-from";   
    }

    @PostMapping("/register")
    public String registerUser(
            @ModelAttribute User user,
            @RequestParam("file") MultipartFile file) {

        emailService.sendEmail(user.getEmail(), user.getName(), file);

        return "redirect:/";
    }
}