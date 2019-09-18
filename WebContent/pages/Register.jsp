<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/myCss.css">

<meta charset="UTF-8">
<title>BookMyShow Register</title>
</head>
<body class="bgimg-1 ./images/back.jpg">
	<form method="POST" >
		<div class="container">
			<div class="form-group row">
				<img src="./images/pop.png" width="350" height="350" class="img-responsive">
			</div>
			<div class="form-group">
				<label>Enter Full Name</label> <input type="text" class="form-control" name="userName">
			</div>
			<div class="form-group">
				<label>City</label> <input type="text" class="form-control" name="userCity">
			</div>
			<div class="form-group">
				<label>Phone No.</label> <input type="text" class="form-control" name="userPhone">
			</div>
			<div class="form-group">
				<label>Enter Email</label> <input type="email" class="form-control" name="userEmail">
			</div>
			<div class="form-group">
				<label>Enter Password </label> <input type="password" class="form-control" name="userPass">
			</div>
			<input type="submit" class="btn btn-danger" value="Register" name="register" formaction="./RegisterUser?click=register">
			<label>or Back</label> <input type="submit" class="btn btn-danger" value="Login" formaction="./RegisterUser?chick=login">
		</div>
	</form>
</body>
</html>