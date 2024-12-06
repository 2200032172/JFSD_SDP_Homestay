package com.klef.jfsd.sdp.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.klef.jfsd.sdp.model.Homestay;
import com.klef.jfsd.sdp.model.User;
import com.klef.jfsd.sdp.repository.HomestayRepository;
import com.klef.jfsd.sdp.service.HomestayService;
import com.klef.jfsd.sdp.service.UserService;

	@Controller
	public class HomestayController {

	    @Autowired
	    private HomestayService homestayService;
	    
	    @Autowired
	    private HomestayRepository homestayRepository;
	    
	    @Autowired
	    private UserService userService;
	    
	  
	   
	    @PostMapping("/addHomestay")
	    public String addHomestay(@RequestParam("name") String name,
	                              @RequestParam("description") String description,
	                             // @RequestParam("price") Double price,
	                              @RequestParam("place") String place,
	                              @RequestParam("image") MultipartFile image,
	                              @RequestParam("price_per_night") Double pricePerNight,
	                              RedirectAttributes redirectAttributes) {
	        try {
	            // Save image to the filesystem
	            String imagePath = homestayService.saveImage(image);

	            // Save the homestay details to the database
	            Homestay homestay = new Homestay();
	            homestay.setName(name);
	            homestay.setDescription(description);
	            //homestay.setPrice(price);
	            homestay.setPlace(place);
	            homestay.setImagePath(imagePath);
	            homestay.setPricePerNight(pricePerNight);
	            

	            
	            homestayRepository.save(homestay);

	            redirectAttributes.addFlashAttribute("message", "Homestay added successfully!");
	            return "redirect:/adminhome";
	        } catch (Exception e) {
	            redirectAttributes.addFlashAttribute("error", "Error adding homestay. Please try again.");
	            return "redirect:/adminhome";
	        }
	    }
	    @GetMapping("/users")
	    public String getUsers(Model model) {
	        List<User> users = userService.getAllUsers(); // Fetch all users from the database
	        model.addAttribute("users", users);
	        return "adminusers";  // Refers to the users.jsp view
	    }

	    @GetMapping("/deleteUser/{userId}")
	    public String deleteUser(@PathVariable Long userId) {
	        userService.deleteUserById(userId);  // Method to delete user by ID
	        return "redirect:/users";  // Redirect back to users list page
	    }   
	}


