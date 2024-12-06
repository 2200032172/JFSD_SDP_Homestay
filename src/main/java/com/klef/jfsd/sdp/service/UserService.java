package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.User;
import com.klef.jfsd.sdp.repository.UserRepository;

@Service
	public class UserService {

	    @Autowired
	    private UserRepository userRepository; // Assuming you have a JPA repository

	    public List<User> getAllUsers() {
	        return userRepository.findAll();
	    }

	    public void deleteUserById(Long userId) {
	        userRepository.deleteById(userId);
	    }
	}

