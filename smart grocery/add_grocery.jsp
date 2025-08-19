<%@ page session="true" %>
<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp?error=Please+login");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Add Grocery - Smart Grocery</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }
        .form-container {
            max-width: 500px;
            margin: 60px auto;
            padding: 25px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .form-header {
            margin-bottom: 20px;
            text-align: center;
        }
        .form-control, .form-select {
            border-radius: 8px;
        }
        .btn-custom {
            border-radius: 8px;
            width: 100%;
        }
        .back-link {
            margin-top: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <div class="form-header">
            <h3 class="fw-bold">Add Grocery Item</h3>
            <p class="text-muted">Fill the details below to add a new grocery item.</p>
        </div>

        <!-- Add Grocery Form -->
        <form action="grocery" method="post">
            <div class="mb-3">
                <label class="form-label">Item Name</label>
                <input type="text" name="item_name" class="form-control" placeholder="Enter item name" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Category</label>
                <input type="text" name="category" class="form-control" placeholder="Enter category (e.g. Dairy, Fruits)" />
            </div>

            <div class="mb-3">
                <label class="form-label">Purchase Date</label>
                <input type="date" name="purchase_date" class="form-control" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Expiry Date</label>
                <input type="date" name="expiry_date" class="form-control" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Quantity</label>
                <input type="number" name="quantity" class="form-control" value="1" min="1" />
            </div>

            <button type="submit" class="btn btn-success btn-custom">Add Grocery</button>
        </form>

        <!-- Back Link -->
        <div class="back-link">
            <p class="mt-3">
                <a href="grocery" class="btn btn-outline-secondary btn-sm">Back to Dashboard</a>
            </p>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
