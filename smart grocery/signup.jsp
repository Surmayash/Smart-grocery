
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Signup - Smart Grocery</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }
        .signup-container {
            max-width: 420px;
            margin: 60px auto;
            padding: 25px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .signup-header {
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
        .login-link {
            margin-top: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="signup-container">
        <div class="signup-header">
            <h3 class="fw-bold">Create Account</h3>
            <p class="text-muted">Join Smart Grocery to manage your items smartly.</p>
        </div>

         <!-- Signup Form -->
        <form action="signup" method="post">
            <div class="mb-3">
                <label class="form-label">Full Name</label>
                <input type="text" name="name" class="form-control" placeholder="Enter your full name" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Email Address</label>
                <input type="email" name="email" class="form-control" placeholder="Enter your email" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter your password" required />
            </div>
            <button type="submit" class="btn btn-success btn-custom">Signup</button>
        </form>

        <!-- Login Link -->
        <div class="login-link">
            <p class="mt-3">Already have an account? <a href="login.jsp" class="text-decoration-none">Login</a></p>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
