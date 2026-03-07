package com.rahul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/student")
public class StudentController {

    @GetMapping
    public String studentDashboard() { 
        // Ab file /WEB-INF/views/student/student-dashboard.jsp mein hai
        return "student/student-dashboard"; 
    }

    @GetMapping("/courses")
    public String studentCourses() { 
        return "student/student-courses"; 
    }
    
    @GetMapping("/allcourses")
    public String allCourses() { 
        return "student/student-allcourses"; 
    }

    @GetMapping("/assignments")
    public String assignments() { 
        return "student/student-assignments"; 
    }
    
    @PostMapping("/enroll")
    public String enrollCourse(@RequestParam("courseId") String courseId) {
        // Yahan database logic likhein
        System.out.println("Enrolling course: " + courseId);
        return "redirect:/student/courses";
    }
    // Baaki mappings bhi aise hi update karein...
}