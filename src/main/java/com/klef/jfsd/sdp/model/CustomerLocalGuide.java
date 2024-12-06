package com.klef.jfsd.sdp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "guide")  // Specify the table name
public class CustomerLocalGuide {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-generate the ID
    private Long id;

    @Column(nullable = false)  // Name cannot be null
    private String name;

    @Column(length = 255)  // Maximum length for description
    private String description;

    @Column  // Image path column
    private String imagePath;

    @Column(length = 255)  // Places included in the guide
    private String placesIncluded;

    @Column  // Price column
    private Double price;

    // Default constructor
    public CustomerLocalGuide() {
    }

    // Constructor for easy initialization
    public CustomerLocalGuide(String name, String description, String imagePath, String placesIncluded, Double price) {
        this.name = name;
        this.description = description;
        this.imagePath = imagePath;
        this.placesIncluded = placesIncluded;
        this.price = price;
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

    public String getPlacesIncluded() {
        return placesIncluded;
    }

    public void setPlacesIncluded(String placesIncluded) {
        this.placesIncluded = placesIncluded;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "CustomerLocalGuide{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", placesIncluded='" + placesIncluded + '\'' +
                ", price=" + price +
                '}';
    }
}

