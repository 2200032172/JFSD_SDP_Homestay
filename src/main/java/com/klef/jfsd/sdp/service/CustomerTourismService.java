package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.CustomerTourismPlace;
import com.klef.jfsd.sdp.repository.CustomerTourismRepository;

@Service
	public class CustomerTourismService {

	    @Autowired
	    private CustomerTourismRepository customertourismRepository;

	    public List<CustomerTourismPlace> getAllTourismPlaces() {
	        return customertourismRepository.findAll();
	    }
	}


