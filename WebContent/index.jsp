<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/myCss.css">
<meta charset="UTF-8">
<title>Book My Show</title>
</head>
<body class="bgimg-1 ./images/back.jpg">
	<form method="POST">
		<div class="container">
			<div class="form-group row">
				<img src="./images/movie.png" width="350" height="350"
					class="img-responsive">
			</div>
			<div class="form-group">
				<label>Enter Email</label> <input type="email" class="form-control"
					name="email">
			</div>
			<div class="form-group">
				<label>Enter Password </label> <input type="password"
					class="form-control" name="password" >
			</div>
			<input type="submit" class="btn btn-danger" value="Login" formaction="LoginCheck?click=login"> 
			<label>or</label> 
			<input type="submit" class="btn btn-danger" value="Register" formaction="LoginCheck?click=register">
		</div>
	</form>
</body>
</html>