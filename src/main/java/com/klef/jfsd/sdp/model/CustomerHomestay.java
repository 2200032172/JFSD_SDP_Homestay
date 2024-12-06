package com.klef.jfsd.sdp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "homestay")  // Specify the existing table name
public class CustomerHomestay {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-generate the ID value
    private Long id;  // ID as primary key

    @Column(nullable = false, length = 100)  // Ensure name is not null and set max length
    private String name;

    @Column(length = 500)  // Set maximum length for description
    private String description;

    @Column//(name = "price_per_night", nullable = false)  // Use the correct column name for price
    private Double pricePerNight;  // Use Double for price

    @Column//(name = "image_path")  // Maps to the column in the database
    private String imagePath;

    @Column(length = 255)  // Add place field
    private String place;

    // Default constructor
    public CustomerHomestay() {
    }

    // Constructor with fields for easy initialization
    public CustomerHomestay(String name, String description, Double pricePerNight, String imagePath, String place) {
        this.name = name;
        this.description = description;
        this.pricePerNight = pricePerNight;
        this.imagePath = imagePath;
        this.place = place;
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

    public Double getPricePerNight() {
        return pricePerNight;
    }

    public void setPricePerNight(Double pricePerNight) {
        this.pricePerNight = pricePerNight;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    // toString method for debugging purposes
    @Override
    public String toString() {
        return "CustomerHomestay{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", pricePerNight=" + pricePerNight +
                ", imagePath='" + imagePath + '\'' +
                ", place='" + place + '\'' +
                '}';
    }
}
