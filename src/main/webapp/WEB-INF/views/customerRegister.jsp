<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration - TripBliss</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/Clogin.jpg'); background-size: cover; background-position: center;">

    <!-- Header: TripBliss on the left-top -->
    <header>
        <div class="logo">
            <h1>TripBliss</h1>
        </div>
    </header>

    <!-- Registration container -->
    <div class="registration-container">
        <h2>Customer Registration</h2>

        <!-- Registration Form -->
        <form action="/register" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="phoneNumber">Phone Number:</label>
            <input type="text" id="phoneNumber" name="phoneNumber" required><br><br>

            <button type="submit">Register</button>
        </form>

        <!-- Success/Error Message Display -->
        <div>
            <p style="color: green;">${message}</p>
        </div>
    </div>

</body>
</html>
