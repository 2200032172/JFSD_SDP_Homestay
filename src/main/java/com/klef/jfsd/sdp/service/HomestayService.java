package com.klef.jfsd.sdp.service;

	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.sdp.model.Homestay;
import com.klef.jfsd.sdp.repository.HomestayRepository;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

	@Service
	public class HomestayService {

	    @Autowired
	    private HomestayRepository homestayRepository;

	    // Get all homestays from the repository
	    public List<Homestay> getAllHomestays() {
	        return homestayRepository.findAll();
	    }

	    // Save booking information (can be extended for persistence)
	    public void bookHomestay(String name, String email, String phone, String room, int guests, String checkin, String checkout) {
	        // Add logic to save booking details to the database or other systems
	        System.out.println("Booking Details: " + name + ", " + email + ", " + phone + ", " + room + ", " + guests + ", " + checkin + ", " + checkout);
	        // You can save this information into a database, or send an email confirmation, etc.
	    }
	    public String saveImage(MultipartFile file) throws IOException {
	    	String folder = "src/main/resources/static/uploads/";
	        String filename = UUID.randomUUID() + "_" + file.getOriginalFilename();
	        Path path = Paths.get(folder + filename);
	        Files.createDirectories(path.getParent());
	        Files.write(path, file.getBytes());
	        return "/uploads/" + filename;
	    }
	}


