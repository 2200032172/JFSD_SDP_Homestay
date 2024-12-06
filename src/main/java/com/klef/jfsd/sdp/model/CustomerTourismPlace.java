package com.klef.jfsd.sdp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tourism")  // Specify the table name
public class CustomerTourismPlace {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-generate the ID
    private Long id;

    @Column(nullable = false)  // Name cannot be null
    private String name;

    @Column(length = 500)  // Maximum length for description
    private String description;

    @Column  // Image path column
    private String imagePath;

    @Column  // Best time to visit
    private String bestTime;

    // Default constructor
    public CustomerTourismPlace() {
    }

    // Constructor for easy initialization
    public CustomerTourismPlace(String name, String description, String imagePath, String bestTime) {
        this.name = name;
        this.description = description;
        this.imagePath = imagePath;
        this.bestTime = bestTime;
    }

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

    public String getBestTime() {
        return bestTime;
    }

    public void setBestTime(String bestTime) {
        this.bestTime = bestTime;
    }

    // toString method for debugging purposes
    @Override
    public String toString() {
        return "CustomerTourismPlace{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", bestTime='" + bestTime + '\'' +
                '}';
    }
}
