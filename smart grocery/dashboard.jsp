<%@ page import="java.util.*,grocery.GroceryServlet.Item" %>
<%@ page session="true" %>
<%
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("login.jsp?error=Please+login");
        return;
    }
    String userName = (String) session.getAttribute("userName");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Smart Grocery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0; padding: 0;
            background: #f5f6fa;
            color: #333;
        }
        header {
            background: #4CAF50;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header h2 { margin: 0; font-size: 20px; }
        header a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin-left: 15px;
        }
        .container {
            max-width: 1100px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .btn {
            display: inline-block;
            padding: 8px 14px;
            margin: 5px 0;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.2s ease-in-out;
        }
        .btn-primary { background: #4CAF50; color: white; }
        .btn-primary:hover { background: #45a049; }
        .btn-danger { background: #e74c3c; color: white; }
        .btn-danger:hover { background: #c0392b; }
        .btn-edit { background: #3498db; color: white; }
        .btn-edit:hover { background: #2980b9; }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        table th, table td {
            padding: 12px;
            text-align: center;
        }
        table thead {
            background: #4CAF50;
            color: white;
        }
        table tr:nth-child(even) {
            background: #f9f9f9;
        }
        .status {
            padding: 4px 10px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: bold;
        }
        .expired { background: #ffe6e6; color: #e74c3c; }
        .near-expiry { background: #fff4e6; color: #e67e22; }
        .safe { background: #e6ffe6; color: #27ae60; }

        /* Responsive */
        @media (max-width: 768px) {
            table thead { display: none; }
            table, table tbody, table tr, table td { display: block; width: 100%; }
            table tr { margin-bottom: 15px; border: 1px solid #ddd; border-radius: 6px; background: #fff; }
            table td {
                text-align: right;
                padding-left: 50%;
                position: relative;
            }
            table td::before {
                content: attr(data-label);
                position: absolute;
                left: 15px;
                font-weight: bold;
                text-align: left;
            }
        }
    </style>
</head>
<body>
    <header>
        <h2>Welcome, <%= userName %> !</h2>
        <div>
            <a href="add_grocery.jsp" class="btn btn-primary">+ Add Grocery</a>
            <a href="logout" class="btn btn-danger">Logout</a>
        </div>
    </header>

    <div class="container">
        <h3>Your Grocery Items</h3>
        <table>
            <thead>
                <tr>
                    <th>Item</th><th>Category</th><th>Qty</th>
                    <th>Purchase Date</th><th>Expiry Date</th><th>Days Left</th>
                    <th>Status</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <%
                List<Item> items = (List<Item>) request.getAttribute("items");
                if (items != null) {
                    for (Item it : items) {
            %>
                <tr>
                    <td data-label="Item"><%= it.itemName %></td>
                    <td data-label="Category"><%= it.category %></td>
                    <td data-label="Qty"><%= it.quantity %></td>
                    <td data-label="Purchase Date"><%= it.purchaseDate %></td>
                    <td data-label="Expiry Date"><%= it.expiryDate %></td>
                    <td data-label="Days Left"><%= it.daysLeft %></td>
                    <td data-label="Status">
                        <% if ("expired".equals(it.status)) { %>
                            <span class="status expired">Expired</span>
                        <% } else if ("near_expiry".equals(it.status)) { %>
                            <span class="status near-expiry">Near Expiry</span>
                        <% } else { %>
                            <span class="status safe">Safe</span>
                        <% } %>
                    </td>
                    <td data-label="Actions">
                        <a href="edit-grocery?id=<%= it.itemId %>" class="btn btn-edit">Edit</a>
                        <a href="delete-grocery?id=<%= it.itemId %>" class="btn btn-danger" onclick="return confirm('Delete this item?')">Delete</a>
                    </td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
</body>
</html>
