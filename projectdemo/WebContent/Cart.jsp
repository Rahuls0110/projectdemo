<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="cart.Cartitem" %>
<%@ page import="cart.Cart" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
 <style>
        body {
            text-align: center;
            padding-bottom: 60px; /* Add padding to the bottom of the body to accommodate the footer */
        }

        table {
            margin: 0 auto;
            width: 50%;
        }

        h2 {
            background-color: black;
            color: white;
            padding: 10px;
            font-size: 24px;
        }

        table td,
        table th {
            padding: 10px;
            text-align: center;
        }

        table thead tr {
            background-color: #333;
            color: white;
        }

        table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tfoot tr {
            background-color: #333;
            color: white;
        }

        table tfoot td {
            font-weight: bold;
        }

        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
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

    </style>
</head>
<body>
    <h2>Cart</h2>
    <table>
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                Cart cart = (Cart) session.getAttribute("cart");
                List<Cartitem> cartItems = null;
                if (cart != null) {
                    cartItems = cart.getItems();
                    for (int i = 0; i < cartItems.size(); i++) {
                        Cartitem cartItem = cartItems.get(i);
                        int quantity = cartItem.getQuantity();
                        double price = cartItem.getProduct().getPrice();
                        double total = price * quantity;
                        %>
<tr>
    <td><%= cartItem.getProduct().getName() %></td>
    <td><%= price %></td>
    <td><%= quantity %></td>
    <td><%= total %></td>
    <td>
        <form method="post" action="Cart.jsp">
            <input type="hidden" name="removeIndex" value="<%= i %>" />
            <button type="submit" style="background-color: rgba(255, 0, 0, 0.3);">Remove</button>
        </form>
    </td>
</tr>


                        <%
                    }
                }
            %>
        </tbody>
        <tfoot>
            <%
                double totalPrice = 0.0;
                if (cart != null) {
                    for (Cartitem cartItem : cartItems) {
                        double price = cartItem.getProduct().getPrice();
                        int quantity = cartItem.getQuantity();
                        double total = price * quantity;
                        totalPrice += total;
                    }
                }
            %>
            <tr>
                <td colspan="4">Total:</td>
                <td><%= totalPrice %></td>
            </tr>
        </tfoot>
    </table>
    <% if (cartItems != null) { %>
        <p>There are <%= cartItems.stream().mapToInt(Cartitem::getQuantity).sum() %> product(s) in the cart.</p>
    <% } %>

    <% if (cart != null) { %>
        <p>Total amount to be paid is <%= totalPrice %>.</p>
    <% } %>
    <p>Once payment is done, click <a href="Checkout.jsp"><button type="button" style="background-color: green; color: white;">Confirm</button></a> to proceed to checkout.</p>

    <footer>
        <div class="footer-content">
            <p>2023 Kalai Ecommerce. All rights reserved.</p>
        </div>
    </footer>
    
    <%-- Handle remove action --%>
    <%
        String removeIndexStr = request.getParameter("removeIndex");
        if (removeIndexStr != null && !removeIndexStr.isEmpty()) {
            int removeIndex = Integer.parseInt(removeIndexStr);
            if (cart != null && removeIndex >= 0 && removeIndex < cartItems.size()) {
                cartItems.remove(removeIndex);
            }
            response.sendRedirect("Cart.jsp");
        }
    %>
</body>
</html>