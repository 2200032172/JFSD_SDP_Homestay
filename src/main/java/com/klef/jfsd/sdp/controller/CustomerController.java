package com.klef.jfsd.sdp.controller;

import com.klef.jfsd.sdp.model.Customer;

import com.klef.jfsd.sdp.service.AdminService;
import com.klef.jfsd.sdp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private AdminService adminService;

    @GetMapping("/register")
    public String showCustomerRegistrationPage() {
        return "customerRegister";
    }

    @PostMapping("/register")
    public String registerCustomer(Customer customer, RedirectAttributes redirectAttributes) {
        // Register the customer
        customerService.customerRegistration(customer);

        // Add success message to the redirectAttributes
        redirectAttributes.addFlashAttribute("message", "New customer added! Please login.");

        // Redirect to the login page
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String showCustomerLoginPage() {
        return "customerLogin";
    }

    @PostMapping("/login")
    public String customerLogin(String username, String password, String role, Model model) {
        if ("admin".equalsIgnoreCase(role)) {
            if (adminService.validateAdmin(username, password)) {
                return "redirect:/adminhome";
            
        }else {
            model.addAttribute("error", "Invalid admin credentials!");
        } 
    } else if ("customer".equalsIgnoreCase(role)) {
            if (customerService.validateCustomer(username, password)) {
                return "redirect:/home";
            
        }else {
        model.addAttribute("error", "Invalid customer credentials !");
        }
    }
  return "customerLogin";
    }
    @GetMapping("/")
    public String showLandingPage() {
        return "landing";
    }

}
