package com.klef.jfsd.sdp.service;

import com.klef.jfsd.sdp.model.CustomerLocalGuide;
import com.klef.jfsd.sdp.repository.CustomerLocalGuideRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerLocalGuideService {

    @Autowired
    private CustomerLocalGuideRepository customerLocalGuideRepository;

    public List<CustomerLocalGuide> getAllLocalGuides() {
        return customerLocalGuideRepository.findAll();
    }
}
