package com.klef.jfsd.sdp.repository;


import com.klef.jfsd.sdp.model.CustomerLocalGuide;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerLocalGuideRepository extends JpaRepository<CustomerLocalGuide, Long> {
	
}

