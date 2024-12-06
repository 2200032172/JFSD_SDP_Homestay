<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users - Admin Panel</title>
    <link rel="stylesheet" href="<c:url value='/css/adminusers.css'/>">
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
                <li><a href="<c:url value='/adminusers'/>">Users</a></li>
                <li><a href="<c:url value='/login'/>">Logout</a></li>
            </ul>
        </nav>
    </header>

    <div class="users-container">
        <h2>Registered Users</h2>
        <table class="users-table">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the users list -->
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.phoneNumber}</td>
                        <td>
                            <!-- Delete Button -->
                            <a href="<c:url value='/deleteUser/${user.id}'/>" class="delete-btn" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <footer>
        <!-- Footer content if any -->
    </footer>
</body>
</html>
