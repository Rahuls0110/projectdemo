<%@ page import="java.util.List" %>
<%@ page import="products.Product" %>
<%@ page import="products.ProductDAO" %>
<%@ page import="cart.Cart" %>
<%@ page import="cart.Cartitem" %>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <style>
        body {
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .content {
            margin: 50px auto;
            width: 75%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            min-height: calc(100vh - 80px); /* Subtract the height of the footer */
        }

        h2 {
            font-size: 24px;
            margin-bottom: 10px;
            background-color: black;
            color: white;
            padding: 10px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            overflow-x: auto; /* Add horizontal scroll when necessary */
        }

        th {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 8px;
        }

        td {
            padding: 8px;
            text-align: center;
        }

        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        .footer-content {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
        }

        .footer-content p {
            margin: 0;
            padding: 10px;
            font-size: 16px;
        }
.add-to-cart-btn {
    background-color: green !important;
    color: white;
    border: none;
    padding: 8px 16px;
    border-radius: 4px;
    cursor: pointer;
}

.add-to-cart-btn:hover {
    background-color: darkgreen !important;
}

    </style>
</head>
<body>
    <div class="content">
        <h2>Products</h2>
        <table>
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Product> products = ProductDAO.getAllProducts();
                    for (Product product : products) {
                %>
              <tr>
    <td><%= product.getName() %></td>
    <td><%= product.getDescription() %></td>
    <td><%= product.getPrice() %></td>
    <td><%= product.getCategory() %></td>
    <td>
        <form action="addToCarts.jsp" method="post">
            <input type="hidden" name="productId" value="<%= product.getId() %>">
            <input type="number" name="quantity" value="1" min="1" max="10">
            <input type="submit" value="Buy" class="add-to-cart-btn"> <!-- Updated class name -->
        </form>
    </td>
</tr>

                <% 
                    }
                %>
            </tbody>
        </table>
    </div>
    <footer>
        <div class="footer-content">
            <p>2023 Kalai Ecommerce. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>