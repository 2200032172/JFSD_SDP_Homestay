package com.klef.jfsd.sdp.service;

import java.util.List;


import com.klef.jfsd.sdp.model.Customer;

public interface AdminService 
{
	public List<Customer> viewAllCustomers(); 
	 boolean validateAdmin(String username, String password);
}
