package com.klef.jfsd.sdp.controller;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Homestay;
import com.klef.jfsd.sdp.repository.HomestayRepository;
import com.klef.jfsd.sdp.service.AdminService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

	@Controller
	public class AdminController {

	    @Autowired
	    private AdminService adminService;
	    
	    @Autowired
	    private HomestayRepository homestayRepository;
	    


	    @GetMapping("/adminlogin")
	    public String showAdminLoginPage() {
	        return "adminhome";
	    }

	    @PostMapping("/adminlogin")
	    public String adminLogin(String username, String password, Model model) {
	        boolean isValidAdmin = adminService.validateAdmin(username, password);
	        if (isValidAdmin) {
	            //model.addAttribute("customers", adminService.viewAllCustomers());
	            return "redirect:/adminhome";
	        }
	        model.addAttribute("error", "Invalid credentials!");
	        return "redirect:/login";
	    }
	    
	    @GetMapping("/adminhome")
	    public String showAdminHomePage(Model model) {
	    	List<Homestay> homestays = homestayRepository.findAll(); // Fetch all homestays
	        model.addAttribute("homestays", homestays); // Add to the model
	        return "adminhome";
	    }
	   
	    
	}


