package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.CustomerHomestay;
import com.klef.jfsd.sdp.repository.CustomerHomestayRepository;

@Service
	public class CustomerHomestayService {

	    @Autowired
	    private CustomerHomestayRepository customerhomestayRepository;

	    public List<CustomerHomestay> getAllHomestays() {
	    	List<CustomerHomestay> homestays = customerhomestayRepository.findAll();  // Assuming you're using JPA to fetch the data
	        for (CustomerHomestay homestay : homestays) {
	            System.out.println("Image Path: " + homestay.getImagePath());  // Debugging output
	        }
	        return homestays;
	    }
	    
	}

