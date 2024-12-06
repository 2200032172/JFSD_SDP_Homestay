package com.klef.jfsd.sdp.repository;


	import org.springframework.data.jpa.repository.JpaRepository;

	import com.klef.jfsd.sdp.model.Guide;

	public interface GuideRepository extends JpaRepository<Guide, Long> {
	}


