<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Login - Smart Grocery</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }
        .login-container {
            max-width: 400px;
            margin: 60px auto;
            padding: 25px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .login-header {
            margin-bottom: 20px;
            text-align: center;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-custom {
            border-radius: 8px;
            width: 100%;
        }
        .signup-link {
            margin-top: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="login-container">
        <div class="login-header">
            <h3 class="fw-bold">Smart Grocery Login</h3>
            <p class="text-muted">Welcome back! Please login to continue.</p>
        </div>

        <!-- Error / Success Messages -->
        <% if (request.getParameter("error") != null) { %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <%= request.getParameter("error") %>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <% } %>
        <% if (request.getParameter("msg") != null) { %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <%= request.getParameter("msg") %>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <% } %>

        <!-- Login Form -->
        <form action="login" method="post">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Enter your email" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter your password" required />
            </div>
            <button type="submit" class="btn btn-primary btn-custom">Login</button>
        </form>

        <!-- Signup Link -->
        <div class="signup-link">
            <p class="mt-3">New user? <a href="signup.jsp" class="text-decoration-none">Signup</a></p>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
