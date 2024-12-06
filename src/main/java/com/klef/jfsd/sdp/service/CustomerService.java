package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Customer;

public interface CustomerService 
{
	public String customerRegistration(Customer customer);
	boolean validateCustomer(String username, String password);
	
	
}
