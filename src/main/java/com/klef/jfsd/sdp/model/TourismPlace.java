package com.klef.jfsd.sdp.model;

	import jakarta.persistence.*;

	@Entity
	@Table(name = "tourism") 
	public class TourismPlace {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String name;
	    private String bestTime;
	    private String description;
	    private String imagePath;
	    
	    
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
		public String getBestTime() {
			return bestTime;
		}
		public void setBestTime(String bestTime) {
			this.bestTime = bestTime;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getImagePath() {
			return imagePath;
		}
		public void setImagePath(String imagePath) {
			this.imagePath = imagePath;
		}

	    // Getters and Setters
	} 


