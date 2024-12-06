package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{
	 @Query("SELECT a FROM Admin a WHERE a.username = ?1 AND a.password = ?2")
	 Admin findByNameAndPassword(String username, String password);
}
