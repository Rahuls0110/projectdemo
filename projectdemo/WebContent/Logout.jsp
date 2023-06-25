<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Logged Out</title>
	<style>
		body {
			background-color: #f2f2f2;
			margin: 0;
			padding: 0;
			font-family: Arial, sans-serif;
			min-height: 100vh;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}
		
		h2 {
			color: #333;
			font-size: 28px;
			margin-top: 50px;
			text-align: center;
		}
		
		a {
			color: #fff;
			background-color: #4CAF50;
			padding: 10px 20px;
			border-radius: 5px;
			text-decoration: none;
			font-weight: bold;
			font-size: 16px;
			margin-top: 30px;
			transition: background-color 0.3s ease;
		}
		
		a:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<h2>You have been logged out successfully!</h2>
	<a href="Signin.jsp">Sign In</a>
</body>
</html>
