package com.spring.springSecurityPractice.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class securityController {

    @GetMapping("/")
    public String homePage() {
        return "employee-panel";
    }

    @GetMapping("/showLoginPage")
    public String showLoginPage() {
        return "login-page";
    }

    @GetMapping("/managerPage")
    public String showManagerPage() {
        return "manager-page";
    }

    @GetMapping("/adminPage")
    public String showAdminPage() {
        return "admin-page";
    }

    @GetMapping("/accessDeniedPage")
    public String showAccessDeniedPage() {
        return "access-denied-page";
    }
}
