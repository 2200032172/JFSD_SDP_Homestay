<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Local Guides</title>
    <link rel="stylesheet" href="<c:url value='/css/adminguide.css'/>">
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
                <li><a href="<c:url value='/guide'/>">Local Guide</a></li>
                <li><a href="<c:url value='/bookings'/>">Bookings</a></li>
                <li><a href="<c:url value='/users'/>">Users</a></li>
                <li><a href="<c:url value='/login'/>">Logout</a></li>
            </ul>
        </nav>
    </header>

    <div class="admin-container">
        <h2>Manage Local Guides</h2>
        <button id="addGuideButton">Add Guide</button>
    </div>

    <!-- Modal for Adding Guide -->
    <div id="addGuideModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeGuideModal">&times;</span>
            <h3>Add New Guide</h3>
            <form action="<c:url value='/addGuide'/>" method="post" enctype="multipart/form-data">
                <label for="name">Guide Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="placesIncluded">Places Included:</label>
                <input type="text" id="placesIncluded" name="placesIncluded" required>

                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea>

				<label for="price">Price:</label>
				    <input type="number" id="price" name="price" step="0.01" min="0" required>

                <label for="image">Upload Image:</label>
                <input type="file" id="image" name="image" accept="image/*" required>

                <button type="submit">Save</button>
            </form>
        </div>
    </div>

    <!-- Display Guides -->
	<div class="homestays-container">
	    <c:forEach var="guide" items="${guides}">
	        <div class="card">
	            <img src="${guide.imagePath}" alt="${guide.name}" />
	            <div class="card-content">
	                <h3>${guide.name}</h3>
	                <p>Places Included: ${guide.placesIncluded}</p>
	                <p>Description: ${guide.description}</p>
	                <p>Price: $${guide.price}</p>
	            </div>
	        </div>
	    </c:forEach>
	</div>



    <script>
        document.getElementById('addGuideButton').onclick = () => {
            document.getElementById('addGuideModal').style.display = 'flex';
        };

        document.getElementById('closeGuideModal').onclick = () => {
            document.getElementById('addGuideModal').style.display = 'none';
        };

        window.onclick = (event) => {
            const modal = document.getElementById('addGuideModal');
            if (event.target === modal) {
                modal.style.display = 'none';
            }
        };
    </script>
</body>
</html>
