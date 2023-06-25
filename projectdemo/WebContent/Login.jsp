<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        body {
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #333;
            color: #fff;
            display: flex;
            align-items: center;
            padding: 10px;
        }

        nav {
            display: flex;
            margin-left: auto;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
            font-weight: bold;
            font-size: 18px;
            padding: 10px;
            border-radius: 5px;
        }

        nav a:hover {
            background-color: #555;
        }

        main {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 80vh;
        }

        main h2 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        main p {
            font-size: 18px;
            text-align: center;
        }

        .image-container {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .image {
            width: 200px;
            height: 200px;
            margin: 10px;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .footer-content p {
            margin: 0;
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Kalai Ecommerce</h1>
        <nav>
            <a href="Products.jsp">Products</a>
            <a href="Cart.jsp">Cart</a>
            <a href="Logout.jsp">Logout</a>
            <a href="Contactus.jsp">Contact Us</a>
        </nav>
    </header>
    <main>
        <h2>Welcome to Kalai Ecommerce!</h2>
        <p>Explore our wide range of products and enjoy a convenient online shopping experience.</p>
        <div class="image-container">
            <img src="https://sathya.in/media/3420/catalog/mobiles.jpg" alt="Mobiles" class="image">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwiLdlpogoIqb784-rj3XFi-zrcvI7QsX6kg&usqp=CAU" alt="Image 2" class="image">
            <img src="https://hips.hearstapps.com/hmg-prod/images/mini-laptops-2023-641b6830e952b.jpg?crop=1.00xw:0.505xh;0,0.246xh&resize=1200:*" alt="Mini Laptops" class="image">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4BRmrtbMXfKyJKuV50Nxipt2Pu_zoBslgZQ&usqp=CAU" alt="Image 4" class="image">
        </div>
    </main>
    <footer>
        <div class="footer-content">
            <p>2023 Kalai Ecommerce. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
