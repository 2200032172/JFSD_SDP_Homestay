<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TripBliss</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/landing.css">
</head>
<body>

    <!-- Navbar with 'TripBliss' on the left and 'Login' on the right -->
	<header>
	    <div class="logo">TripBliss</div>
	    
	</header>

    <!-- Slide 1: Welcome with Right-Aligned Cards -->
	<section id="slide1" class="slide" style="background-image: url('${pageContext.request.contextPath}/images/landing.jpg');">
	       <div class="link-container">
	           <a href="#slide2" class="redirect-link">Homestays</a>
	           <a href="#slide3" class="redirect-link">Tourism</a>
	           <a href="#slide4" class="redirect-link">Local Guide</a>
			   <a href="/login" class="redirect-link">Login</a>
	       </div>
	   </section>

    <!-- Slide 2: Homestay (No Container for Heading) -->
	<section id="slide2" class="slide" style="background-image: url('${pageContext.request.contextPath}/images/landing1.jpg');">
	    <h1 class="slide-heading">Homestays</h1>
	    <div class="content-center">
	        <p>Enjoy a unique, immersive travel experience by staying with local hosts. Homestays offer a comfortable, authentic environment that helps you feel at home while exploring a new place.</p>
	    </div>
	</section>


    <!-- Slide 3: Tourism (No Container for Heading) -->
    <section id="slide3" class="slide" style="background-image: url('${pageContext.request.contextPath}/images/landing2.jpg');">
        <h1 class="slide-heading">Tourism</h1>
		<div class="content-center">
        <p> Discover the beauty and culture of your destination with access to scenic landscapes, historic landmarks, and vibrant attractions. Tourism connects you with the soul of each place you visit.</p>
		</div>
    </section>

    <!-- Slide 4: Local Guide (No Container for Heading) -->
    <section id="slide4" class="slide" style="background-image: url('${pageContext.request.contextPath}/images/landing3.jpg');">
        <h1 class="slide-heading">Local Guide</h1>
		<div class="content-center">
        <p>Connect with knowledgeable local guides who can show you hidden gems, share insider tips, and make your journey richer by providing a personal perspective on the area.</p>
		</div>
    </section>
	
	

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 TripBliss. All rights reserved.</p>
    </footer>

</body>
</html>
