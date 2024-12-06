package com.klef.jfsd.sdp.model;


	import jakarta.persistence.*;

	@Entity
	public class Guide {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String name;
	    private String placesIncluded;
	    private String description;
	    private double price;
	    private String imagePath;

	    // Getters and Setters
	    public Long getId() {
	        return id;
	    }
	    public void setId(Long id) {
	        this.id = id;
	    }
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    public String getPlacesIncluded() {
	        return placesIncluded;
	    }
	    public void setPlacesIncluded(String placesIncluded) {
	        this.placesIncluded = placesIncluded;
	    }
	    public String getDescription() {
	        return description;
	    }
	    public void setDescription(String description) {
	        this.description = description;
	    }
	    public double getPrice() {
	        return price;
	    }
	    public void setPrice(double price) {
	        this.price = price;
	    }
	    public String getImagePath() {
	        return imagePath;
	    }
	    public void setImagePath(String imagePath) {
	        this.imagePath = imagePath;
	    }
	}

