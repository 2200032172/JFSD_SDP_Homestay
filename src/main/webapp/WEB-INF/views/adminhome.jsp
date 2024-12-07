<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - TripBliss</title>
    <link rel="stylesheet" href="<c:url value='/css/adminhome.css'/>">
</head>
<body>
    <header>
        <div class="logo">
            <h1>TripBliss</h1>
        </div>
        <nav>
            <ul>
                <li><a href="<c:url value='/adminhome'/>">Homestays</a></li>
                <li><a href="<c:url value='/adminplace'/>">Tourism</a></li>
                <li><a href="<c:url value='/adminguide'/>">LocalGuide</a></li>
                <li><a href="<c:url value='/bookings'/>">Bookings</a></li>
                <li><a href="<c:url value='/users'/>">Users</a></li>
                <li><a href="<c:url value='/login'/>">Logout</a></li>
            </ul>
        </nav>
    </header>

    <div class="admin-container">
        <h2>Welcome, Admin</h2>
        <button id="addHomestayButton">Add Homestay</button>
    </div>

    <!-- Modal for Adding Homestay -->
    <div id="addHomestayModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeHomestayModal">&times;</span>
            <h3>Add New Homestay</h3>
            <form action="<c:url value='/addHomestay'/>" method="post" enctype="multipart/form-data">
                <label for="name">Homestay Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea>

                <label for="price">Price (per night):</label>
				<input type="number" name="price_per_night" placeholder="Price Per Night" step="0.01" required />

                <label for="place">Place:</label>
                <input type="text" id="place" name="place" required>

                <label for="image">Upload Image:</label>
                <input type="file" id="image" name="image" accept="image/*" required>

                <button type="submit">Save</button>
            </form>
        </div>
    </div>

    <!-- Homestays Display -->
	<div class="homestays-container">
	    <h3>Registered Homestays</h3>
	    <c:forEach var="homestay" items="${homestays}">
	        <div class="card">
	            <img src="${homestay.imagePath}" alt="${homestay.name}" style="width: 200px; height: auto;">
	            <h3>${homestay.name}</h3>
	            <p>${homestay.description}</p>
	            <p><strong>Price:</strong> ₹${homestay.price}</p>
	            <p><strong>Location:</strong> ${homestay.place}</p>
	            
	            <!-- Delete Button -->
	            <form action="<c:url value='/deleteHomestay'/>" method="post">
	                <input type="hidden" name="id" value="${homestay.id}">
	                <button type="submit">Delete</button>
	            </form>

	            <!-- Update Button -->
	            <button onclick="openUpdateModal(${homestay.id}, '${homestay.name}', '${homestay.description}', ${homestay.price}, '${homestay.place}', '${homestay.imagePath}')">Update</button>
	        </div>
	    </c:forEach>
	</div>
	
	<div id="updateHomestayModal" class="modal">
	    <div class="modal-content">
	        <span class="close" onclick="document.getElementById('updateHomestayModal').style.display='none'">&times;</span>
	        <h3>Update Homestay</h3>
	        <form action="<c:url value='/updateHomestay'/>" method="post" enctype="multipart/form-data">
	            <input type="hidden" id="updateId" name="id">
	            
	            <label for="updateName">Homestay Name:</label>
	            <input type="text" id="updateName" name="name" required>
	            
	            <label for="updateDescription">Description:</label>
	            <textarea id="updateDescription" name="description" rows="4" required></textarea>
	            
	            <label for="updatePrice">Price:</label>
	            <input type="number" id="updatePrice" name="price" step="0.01" required>
	            
	            <label for="updatePlace">Place:</label>
	            <input type="text" id="updatePlace" name="place" required>
	            
	            <label for="updateImage">Upload New Image:</label>
	            <input type="file" id="updateImage" name="image" accept="image/*">
	            
	            <button type="submit">Save</button>
	        </form>
	    </div>
	</div>




    <script src="<c:url value='/js/admin.js'/>">
		
		  
	</script>
</body>
</html>
