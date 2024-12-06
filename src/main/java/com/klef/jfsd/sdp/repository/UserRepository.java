package com.klef.jfsd.sdp.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.User;

@Repository
	public interface UserRepository extends JpaRepository<User, Long> {
	    // You can add custom queries if needed
	}

