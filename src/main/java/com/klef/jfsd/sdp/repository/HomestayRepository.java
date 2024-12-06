package com.klef.jfsd.sdp.repository;

	
	import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.sdp.model.Homestay;

	public interface HomestayRepository extends JpaRepository<Homestay, Long> {
	    // You can define custom queries if needed, e.g., by location or room type
		
	}

