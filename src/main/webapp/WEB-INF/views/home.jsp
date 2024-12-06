<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TripBliss - Homestays and Local Attractions</title>
    <link rel="stylesheet" href="<c:url value='/css/home.css'/>">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <h1>TripBliss</h1>
        </div>
        <nav>
            <ul>
                <li><a href="<c:url value='/homestay'/>">Homestays</a></li>
                <li><a href="<c:url value='/tourism'/>">Tourism</a></li>
                <li><a href="<c:url value='/localguide'/>">LocalGuide</a></li>
                <li><a href="<c:url value='/about'/>">About Us</a></li>
                <li><a href="<c:url value='/login'/>">LogOut</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="slideshow-container">
        <!-- First Slide -->
        <div class="slide" style="background-image: url('<c:url value="/images/travel.jpg"/>');">
            <div class="slide-content">
                <h2>Find Your Perfect Stay & Explore Hidden Gems</h2>
                <a href="<c:url value='/homestay'/>" class="cta-button">Explore Homestays</a>
                
            </div>
        </div>
    </section>

    

    <!-- How It Works Section -->
    <section class="how-it-works">
        <h2>How It Works</h2>
        <div class="steps">
            <div class="step">
                <h3>For Tourists</h3>
                <p>Search for homestays → Book your stay → Explore local attractions</p>
            </div>
            <div class="step">
                <h3>For Homestay Hosts</h3>
                <p>List your homestay → Manage bookings → Host guests</p>
            </div>
            <div class="step">
                <h3>For Local Guides</h3>
                <p>Share insights → Provide recommendations → Engage with tourists</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 TripBliss - All Rights Reserved</p>
    </footer>
</body>
</html>
