package com.rahul.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() { return "index"; }

    @GetMapping("/about")
    public String about() { return "about"; }

    @GetMapping("/course")
    public String courses() { return "course-details"; }

    @GetMapping("/courses")
    public String coursese() { return "courses"; }
}