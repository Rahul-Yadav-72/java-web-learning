package com.rahul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {

    // Home Page
    @GetMapping("/")
    public String home() {
        return "index";
    }
    
 // About page mapping
    @GetMapping("/about")
    public String about() {
        return "about";  // about.jsp
    }

    // Show Login Page
    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

    // Handle Login
    @PostMapping("/login")
    public String loginUser(@RequestParam("role") String role,
                            @RequestParam("email") String email,
                            @RequestParam("password") String password,
                            Model model) {

        if(role == null || role.isEmpty()) {
            model.addAttribute("error", "Please select role!");
            return "login";
        }

        switch (role) {

            case "student":
                return "redirect:/student";

            case "teacher":
                return "redirect:/teacher";

            case "admin":
                return "redirect:/admin";

            default:
                model.addAttribute("error", "Invalid Login!");
                return "login";
        }
    }

    // Register Page
    @GetMapping("/register")
    public String showRegisterPage() {
        return "register";
    }
    // courde-detaild
    @GetMapping("/course")
    public String courses() {
    	return "course-details";
    }

    // Student Dashboard
    @GetMapping("/student")
    public String studentDashboard() {
        return "student-dashboard";
    }

    // Teacher Dashboard
    @GetMapping("/teacher")
    public String teacherDashboard() {
        return "teacher-dashboard";
    }

    // Admin Dashboard
    @GetMapping("/admin")
    public String adminDashboard() {
        return "admin-dashboard";
    }

    // =========================
    // ✅ NEW STUDENT PAGE LINKS
    // =========================

    @GetMapping("/student/courses")
    public String studentCourses() {
        return "student-courses";
    }

    @GetMapping("/student/assignments")
    public String studentAssignments() {
        return "student-assignments";
    }

    @GetMapping("/student/quiz")
    public String studentQuiz() {
        return "student-quiz";
    }

    @GetMapping("/student/quiz-result")
    public String studentQuizResult() {
        return "student-quiz-result";
    }

    @GetMapping("/student/progress")
    public String studentProgress() {
        return "student-progress";
    }

    @GetMapping("/student/certificate")
    public String studentCertificate() {
        return "student-certificate";
    }

    @GetMapping("/student/profile")
    public String studentProfile() {
        return "student-profile";
    }

    @GetMapping("/student/course-details")
    public String courseDetails() {
        return "course-details";
    }
    
 // ================= TEACHER PAGES =================

    @GetMapping("/teacher/add-course")
    public String addCourse() {
        return "teacher-add-course";
    }
    @GetMapping("/teacher/courses")
    public String myCourse() {
        return "teacher-courses";
    }

    @GetMapping("/teacher/students")
    public String teacherStudents() {
        return "teacher-students";
    }

    @GetMapping("/teacher/assignments")
    public String teacherAssignments() {
        return "teacher-assignments";
    }

    @GetMapping("/teacher/quizzes")
    public String teacherQuizzes() {
        return "teacher-quizzes";
    }

    @GetMapping("/teacher/profile")
    public String teacherProfile() {
        return "teacher-profile";
    }

}