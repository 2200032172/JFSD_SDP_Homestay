<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Tourism</title>
    <link rel="stylesheet" href="<c:url value='/css/adminplace.css'/>">
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
        <h2>Manage Tourism Places</h2>
        <button id="addPlaceButton">Add Place</button>
    </div>

    <!-- Modal for Adding Place -->
    <div id="addPlaceModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closePlaceModal">&times;</span>
            <h3>Add New Place</h3>
            <form action="<c:url value='/addPlace'/>" method="post" enctype="multipart/form-data">
                <label for="name">Place Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="bestTime">Best Time to Visit:</label>
                <input type="text" id="bestTime" name="bestTime" required>

                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea>

                <label for="image">Upload Image:</label>
                <input type="file" id="image" name="image" accept="image/*" required>

                <button type="submit">Save</button>
            </form>
        </div>
    </div>

    <!-- Display Places -->
    <div class="places-container">
        <h3>Tourism Places</h3>
		<c:forEach var="place" items="${places}">
		    <div class="card">
		        <img src="${place.imagePath}" alt="${place.name}" style="width: 200px; height: auto;">
		        <h3>${place.name}</h3>
		        <p><strong>Best Time to Visit:</strong> ${place.bestTime}</p>
		        <p>${place.description}</p>
		    </div>
		</c:forEach>

    </div>

    
		<script>
		    document.getElementById('addPlaceButton').onclick = () => {
		        document.getElementById('addPlaceModal').style.display = 'flex';
		    };

		    document.getElementById('closePlaceModal').onclick = () => {
		        document.getElementById('addPlaceModal').style.display = 'none';
		    };

		    // Close modal if the user clicks outside of it
		    window.onclick = (event) => {
		        const modal = document.getElementById('addPlaceModal');
		        if (event.target === modal) {
		            modal.style.display = 'none';
		        }
		    };
		</script>

	
</body>
</html>
