package com.klef.jfsd.sdp.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.klef.jfsd.sdp.model.CustomerHomestay;
import com.klef.jfsd.sdp.model.CustomerLocalGuide;
import com.klef.jfsd.sdp.model.CustomerTourismPlace;
import com.klef.jfsd.sdp.service.CustomerHomestayService;
import com.klef.jfsd.sdp.service.CustomerLocalGuideService;
import com.klef.jfsd.sdp.service.CustomerTourismService;
import com.klef.jfsd.sdp.service.HomestayService;

	@Controller
	public class HomeController {
		
		@Autowired
	    private CustomerHomestayService customerhomestayService;
		
		 @Autowired
		    private HomestayService homestayService;
		 
		 @Autowired
		    private CustomerTourismService customertourismService;
		 
		 @Autowired
		    private CustomerLocalGuideService customerLocalGuideService;

	    @GetMapping("/home")
	    public String showHomePage(Model model) {
	        // You can add any attributes to the model here if you want to pass data to the JSP
	        return "home";
	    }
	    // Post mapping to process the booking form
	    @PostMapping("/bookHomestay")
	    public String bookHomestay(String name, String email, String phone, String room, int guests, String checkin, String checkout, Model model) {
	        // Save the booking information (this can be extended)
	        homestayService.bookHomestay(name, email, phone, room, guests, checkin, checkout);
	        
	        // Redirect to a confirmation page (you can customize this part)
	        model.addAttribute("message", "Booking successful!");
	        return "confirmation"; // Show confirmation page (this could be a simple page)
	    }
	    @GetMapping("/booking")
	    public String showBookingPage() {
	        return "booking"; // Name of the view file, e.g., booking.jsp or booking.html
	    }
	    
	    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	    @GetMapping("/homestay")
	    public String showHomestays(Model model) {
	        List<CustomerHomestay> homestays = customerhomestayService.getAllHomestays();
	        model.addAttribute("homestays", homestays); // Add homestays to model
	        return "homestay"; // Ensure this matches your view name
	    }
	    @GetMapping("/tourism")
	    public String showTourismPlaces(Model model) {
	        List<CustomerTourismPlace> tourismPlaces = customertourismService.getAllTourismPlaces();
	        model.addAttribute("tourismPlaces", tourismPlaces);
	        return "tourism";
	    }
	    
	    @GetMapping("/localguide")
	    public String showLocalGuides(Model model) {
	        List<CustomerLocalGuide> localGuides = customerLocalGuideService.getAllLocalGuides();
	        model.addAttribute("localGuides", localGuides);
	        return "localguide"; // Make sure this matches your view name
	    }

	}

