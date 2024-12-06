package com.klef.jfsd.sdp.repository;

	import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.sdp.model.TourismPlace;

	public interface TourismRepository extends JpaRepository<TourismPlace, Long> {
	}


