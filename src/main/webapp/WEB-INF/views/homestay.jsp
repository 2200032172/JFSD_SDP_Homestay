<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homestay Booking</title>
    <link rel="stylesheet" href="<c:url value='/css/Homestay.css'/>">
</head>
<body>
    <!-- Header (Same as homepage navbar) -->
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
    <section class="hero" style="background-image: url('<c:url value="/images/homestay.jpg" />');">
        <div class="overlay"></div>
        <div class="hero-text">
            <h2>Find Your Perfect Homestay</h2>
            <p>Explore the best homestays for your next trip</p>
        </div>
    </section>

    <!-- Booking Form Section -->
    <section class="booking-form">
        <div class="container">
            <h3>Book Your Stay</h3>
            <form>
                <div class="input-group">
                    <input type="text" name="name" placeholder="Full Name" required>
                    <input type="email" name="email" placeholder="Email" required>
                    <input type="tel" name="phone" placeholder="Phone Number" required>
                </div>

                <div class="input-group">
                    <select name="room" required>
                        <option value="">Select Room</option>
                        <option value="single">Single Room</option>
                        <option value="double">Double Room</option>
                        <option value="suite">Suite</option>
                    </select>
                    <select name="guests" required>
                        <option value="">Select Number of Guests</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                </div>

                <div class="input-group">
                    <input type="date" name="checkin" placeholder="Check-in Date" required>
                    <input type="date" name="checkout" placeholder="Check-out Date" required>
                </div>

				<button type="button" class="btn" onclick="window.location.href='/booking'">Send Booking</button>

				
            </form>
        </div>
    </section>

	<!-- Homestay Cards Section -->
	<section class="homestay-cards">
	    <div class="container">
	        <h3>Our Homestays</h3>
	        <div class="card-row">
	            <c:forEach var="homestay" items="${homestays}">
	                <div class="card">
	                    <!-- Use image_path here instead of image_url -->
	                    <img src=".${homestay.imagePath}" alt="Homestay Image">
	                    <div class="card-content">
	                        <h4>${homestay.name}</h4>
	                        <p>${homestay.description}</p>
							<p>${homestay.place}</p>
	                        <p class="price">₹${homestay.pricePerNight}</p>
	                        <button type="button" class="btn" onclick="window.location.href='/booking'">Book now</button>
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
