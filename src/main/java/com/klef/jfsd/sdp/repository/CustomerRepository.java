package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	Customer findByUsernameAndPassword(String username, String password);
}
