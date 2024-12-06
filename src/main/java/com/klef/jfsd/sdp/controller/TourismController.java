package com.klef.jfsd.sdp.controller;


import com.klef.jfsd.sdp.model.TourismPlace;
import com.klef.jfsd.sdp.repository.TourismRepository;
    import com.klef.jfsd.sdp.service.HomestayService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.multipart.MultipartFile;
	import org.springframework.web.servlet.mvc.support.RedirectAttributes;

	@Controller
	public class TourismController {

	    @Autowired
	    private HomestayService homestayService;

	    @Autowired
	    private TourismRepository tourismRepository;

	    @GetMapping("/adminplace")
	    public String viewTourismPlaces(Model model) {
	    	List<TourismPlace> places = tourismRepository.findAll(); // Fetch all homestays
	        model.addAttribute("places", places); 
	        return "admintourism";
	    }

	    @PostMapping("/addPlace")
	    public String addPlace(@RequestParam("name") String name,
	                           @RequestParam("bestTime") String bestTime,
	                           @RequestParam("description") String description,
	                           @RequestParam("image") MultipartFile image,
	                           RedirectAttributes redirectAttributes) {
	        try {
	            String imagePath = homestayService.saveImage(image);

	            TourismPlace place = new TourismPlace();
	            place.setName(name);
	            place.setBestTime(bestTime);
	            place.setDescription(description);
	            place.setImagePath(imagePath);

	            tourismRepository.save(place);

	            redirectAttributes.addFlashAttribute("message", "Place added successfully!");
	            return "redirect:/adminplace";
	        } catch (Exception e) {
	            redirectAttributes.addFlashAttribute("error", "Error adding place. Please try again.");
	            return "redirect:/adminplace";
	        }
	    }
	}

