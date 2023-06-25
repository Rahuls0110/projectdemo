<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="products.Product" %>
<%@ page import="products.ProductDAO" %>
<%@ page import="cart.Cartitem" %>
<%@ page import="cart.Cart" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add to Cart</title>
</head>
<body>
    <%
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productIdString = Integer.toString(productId);
        Product product = ProductDAO.getProductById(productIdString);
        
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Cartitem cartItem = new Cartitem(product, quantity);
        cart.addItem(cartItem);
        
        response.sendRedirect("Cart.jsp");
    %>
</body>
</html>
