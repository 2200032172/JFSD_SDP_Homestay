<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <style>
        /* Fullscreen Background Image */
        body {
            background-image: url('${pageContext.request.contextPath}/images/homestay.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
            font-family: Arial, sans-serif;
        }

        /* Background overlay to dull the image */
        .background-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        /* Centered Content Container */
        .booking-message {
            position: relative;
            z-index: 2;
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent overlay */
            padding: 2rem;
            border-radius: 15px;
            text-align: center;
        }

        .booking-message h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .booking-message p {
            font-size: 1.2rem;
        }

        /* Navbar styling */
        header {
            position: absolute;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 3;
        }

        .logo h1 {
            color: #fff;
            font-size: 1.5rem;
            margin: 0;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 1.5rem;
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1rem;
            padding: 0.5rem 1rem;
            border-radius: 5px;
        }

        nav ul li a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>
    <!-- Background Overlay -->
    <div class="background-overlay"></div>

    <!-- Navbar -->
    <header>
        <div class="logo">
            <h1>TripBliss</h1>
        </div>
        <nav>
            <ul>
				<li><a href="<c:url value='/homestay'/>">Homestays</a></li>
				                <li><a href="<c:url value='/tourism'/>">Tourism</a></li>
				                <li><a href="<c:url value='/guide'/>">LocalGuide</a></li>
				                <li><a href="<c:url value='/about'/>">About Us</a></li>
				                <li><a href="<c:url value='/login'/>">LogOut</a></li>
            </ul>
        </nav>
    </header>

    <!-- Centered Booking Message -->
    <div class="booking-message">
        <h1>Booking Request Sent</h1>
        <p>Your booking request is being processed. We will notify you shortly.</p>
    </div>
</body>
</html>
