<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Guides</title>
    <link rel="stylesheet" href="<c:url value='/css/localguide.css'/>">
    
</head>
<body>
    <!-- Navbar -->
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
	<section class="hero" style="background-image: url('<c:url value="/images/guide.jpg" />');">
    <section class="hero">
        <div class="overlay"></div>
        <div class="hero-text">
            <h2>Explore the Best Local Guides</h2>
            <p>Find your perfect local guide for an unforgettable journey</p>
        </div>
    </section>

    <!-- Local Guides Section -->
    <section class="guide-cards">
        <div class="container">
            <h3>Local Guides</h3>
            <div class="card-row">
                <c:forEach var="localGuide" items="${localGuides}">
                    <div class="card">
                        <img src="${localGuide.imagePath}" alt="Local Guide">
                        <div class="card-content">
                            <h4>${localGuide.name}</h4>
                            <p>${localGuide.description}</p>
                            <p>Places: ${localGuide.placesIncluded}</p>
                            <p>Price: $${localGuide.price}</p>
                            <button class="btn" onclick="window.location.href='/details/${localGuide.id}'">View Details</button>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 TripBliss - All Rights Reserved</p>
    </footer>
</body>
</html>
