<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - TripBliss</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customerlogin.css">
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/Clogin.jpg'); background-size: cover; background-position: center;">

    <!-- Header -->
    <header>
        <div class="logo">
            <h1>TripBliss</h1>
        </div>
    </header>

    <!-- Login Container -->
    <div class="login-container">
        <h2>Login</h2>

        <!-- Login Form -->
        <form id="loginForm" action="${pageContext.request.contextPath}/login" method="post">
            <label for="role">Login as:</label>
            <select id="role" name="role" required>
                <option value="customer">Customer</option>
                <option value="admin">Admin</option>
            </select><br><br>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

			<button type="submit">Login
			    <div class="spark"></div>
			</button>
        </form>

        <!-- Error Message -->
        <div>
            <p style="color: red;">${error}</p>
        </div>

        <!-- Register Link -->
        <div class="register-link">
            <p>New user? <a href="${pageContext.request.contextPath}/register">Register here</a></p>
        </div>
    </div>

</body>
</html>
