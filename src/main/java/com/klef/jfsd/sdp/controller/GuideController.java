package com.klef.jfsd.sdp.controller;


	import com.klef.jfsd.sdp.model.Guide;
import com.klef.jfsd.sdp.model.TourismPlace;
import com.klef.jfsd.sdp.repository.GuideRepository;
import com.klef.jfsd.sdp.service.HomestayService;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.multipart.MultipartFile;
	import org.springframework.web.servlet.mvc.support.RedirectAttributes;

	import java.util.List;

	@Controller
	public class GuideController {

	    @Autowired
	    private HomestayService homestayService;
	    
	    @Autowired
	    private GuideRepository guideRepository;

	    @GetMapping("/adminguide")
	    public String viewGuides(Model model) {
	    	List<Guide> guides = guideRepository.findAll();
	        model.addAttribute("guides", guides);
	        return "adminguide";
	    }

	    @PostMapping("/addGuide")
	    public String addGuide(@RequestParam("name") String name,
	                           @RequestParam("placesIncluded") String placesIncluded,
	                           @RequestParam("description") String description,
	                           @RequestParam("price") double price,
	                           @RequestParam("image") MultipartFile image,
	                           RedirectAttributes redirectAttributes) {
	    	
	        try {
	            String imagePath = homestayService.saveImage(image);

	            Guide guide = new Guide();
	            guide.setName(name);
	            guide.setPlacesIncluded(placesIncluded);
	            guide.setDescription(description);
	            guide.setPrice(price);
	            guide.setImagePath(imagePath);

	            guideRepository.save(guide);

	            redirectAttributes.addFlashAttribute("message", "Guide added successfully!");
	            return "redirect:/adminguide";
	        } catch (Exception e) {
	            redirectAttributes.addFlashAttribute("error", "Error adding guide. Please try again.");
	            return "redirect:/adminguide";
	        }
	    }
	}

