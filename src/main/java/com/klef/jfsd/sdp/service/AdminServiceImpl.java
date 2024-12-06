package com.klef.jfsd.sdp.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.CustomerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private  AdminRepository adminRepository;
	
	@Autowired
    private CustomerRepository customerRepository;

	@Override
	public List<Customer> viewAllCustomers() {
		return customerRepository.findAll();
	}

	@Override
	public boolean validateAdmin(String username, String password) {
		Admin admin = adminRepository.findByNameAndPassword(username, password);
        return admin != null;
	}
	
}
