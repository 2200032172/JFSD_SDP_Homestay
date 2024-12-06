<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism Places</title>
    <link rel="stylesheet" href="<c:url value='/css/tourism.css'/>">
</head>
<body>
    <!-- Header (Navbar) -->
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
    <section class="hero" style="background-image: url('<c:url value="/images/tourism.jpg" />');">
        <div class="overlay"></div>
        <div class="hero-text">
            <h2>Explore the Best Tourism Places</h2>
            <p>Discover amazing destinations for your next adventure</p>
        </div>
    </section>

    <!-- Tourism Cards Section -->
    <section class="tourism-cards">
        <div class="container">
            <h3>Tourism Places</h3>
            <div class="card-row">
                <c:forEach var="tourismPlace" items="${tourismPlaces}">
                    <div class="card">
                        <img src="${tourismPlace.imagePath}" alt="Tourism Image">
                        <div class="card-content">
                            <h4>${tourismPlace.name}</h4>
                            <p>${tourismPlace.description}</p>
							<p>${tourismPlace.bestTime}</p>
                            <button type="button" class="btn" onclick="window.location.href='/details/${tourismPlace.id}'">
                                View Details
                            </button>
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
