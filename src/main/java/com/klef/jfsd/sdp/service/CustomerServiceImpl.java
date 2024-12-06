package com.klef.jfsd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {
    
    @Autowired
    private CustomerRepository customerRepository;

   
	@Override
	public String customerRegistration(Customer customer) 
	{
		 customerRepository.save(customer);
	        return "Customer data successfully saved.";
	}


	@Override
	public boolean validateCustomer(String username, String password) {
		 Customer customer = customerRepository.findByUsernameAndPassword(username, password);
	        return customer != null;
	}
}
