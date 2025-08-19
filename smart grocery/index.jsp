<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grocery Store</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #0f3a34; /* dark green background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container-box {
            background-color: #f8f9f4; /* light cream background */
            width: 380px;
            height: 450px;
            border-radius: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 30px;
        }
        .icon-circle {
            background-color: #4CAF50;
            color: white;
            font-size: 40px;
            padding: 25px; 
            border-radius: 50%;
            display: inline-flex;
            justify-content: center;
            align-items: center;
        }
        h2 {
            font-weight: 600;
            color: #4CAF50;
            margin-top: 15px;
        }
        p {
            margin-top: 10px;
            font-size: 18px;
            color: #333;
        }
        .btn-signin {
            background-color: #4CAF50;
            color: white;
            width: 200px;
            margin-top: 20px;
            border-radius: 25px;
        }
        .btn-signup {
            border: 2px solid #4CAF50;
            color: #4CAF50;
            width: 200px;
            margin-top: 15px;
            border-radius: 25px;
        }
        .btn-signup:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container-box">
        <!-- Grocery Store Icon -->
        <div class="icon-circle">
            <i class="bi bi-bag-fill"></i>
        </div>
        <h2>Smart<br>Grocery</h2>
        <p>Welcome!</p>

        <!-- Buttons -->
        <a href="login.jsp" class="btn btn-signin">Sign in</a>
        <a href="signup.jsp" class="btn btn-signup">Sign up</a>
    </div>

</body>
</html>
