<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
header {
    background-color: black;
    color: #fff;
    text-align: center;
    padding: 20px;
}

h1, h2, h3 {
    margin: 0;
    padding: 10px;
}

h2, h3 {
    text-align: center;
}

footer {
    position: fixed;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
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

.image-container {
    display: flex;
    justify-content: center;
}

.image-container img {
    max-width: 50%;
}
</style>
</head>
<body>
<header>
    <h1>Kalai Ecommerce</h1>
</header>
<br>
<h2>Your order is placed successfully and it will be shipped to your address within 3 days</h2>
<div class="image-container">
    <img src="https://img.freepik.com/premium-vector/delivery-vector-illustration_688032-878.jpg?w=1380" alt="Delivery Illustration">
</div>
<h2>Thanks for shopping with us</h2>
<footer>
    <div class="footer-content">
        <p>2023 Kalai Ecommerce. All rights reserved.</p>
    </div>
</footer>
</body>
</html>
