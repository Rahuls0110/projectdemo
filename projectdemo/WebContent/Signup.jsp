<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f5f5f5;
	}
	
	h2 {
		color: #333;
		text-align: center;
		margin-top: 50px;
	}
	
	form {
		margin: 50px auto;
		width: 60%;
		background-color: #ffa07a;
		padding: 20px;
		border-radius: 5px;
		box-shadow: 0 0 10px #ccc;
	}
	
	label {
		display: block;
		font-weight: bold;
		margin-bottom: 10px;
	}
	
	input[type="text"],
	textarea {
		width: 100%;
		padding: 10px;
		border-radius: 5px;
		border: none;
		margin-bottom: 20px;
		box-sizing: border-box;
	}
	
	input[type="submit"] {
		background-color: #333;
		color: #fff;
		padding: 10px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}
	
	input[type="submit"]:hover {
		background-color: #555;
	}
</style>
</head>
<body>
	<h2>User Registration Form</h2>
	<form action="submit" method="POST">
		<label for="firstname">First name:</label>
		<input type="text" id="firstname" name="firstname" required>
		
		<label for="lastname">Last  name:</label>
		<input type="text" id="lastname" name="lastname" required>
		
		<label for="email">Email:</label>
		<input type="text" id="email" name="email" required>
		
		<label for="passcode">Passcode:</label>
		<input type="text" id="passcode" name="passcode" required>
		
		<label for="mobile">Mobile No:</label>
		<input type="text" id="mobile" name="mobile" required>
		
		<label for="country">Country:</label>
		<input type="text" id="country" name="country" required>
		
		<label for="state">State:</label>
		<input type="text" id="state" name="state" required>
		
		<label for="address">Address:</label>
		<textarea id="address" name="address" required></textarea>
		
		<label for="pincode">Pincode:</label>
		<input type="text" id="pincode" name="pincode" required>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>
