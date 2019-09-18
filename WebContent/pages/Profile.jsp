<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>

<%@page import="com.show.Entity.Login"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.show.Database.JpaConnection"%>

<%
	List<Login> results = JpaConnection.getUsers();
	String userName = (String) session.getAttribute("userName");

	String city="";
	String phone_no="";
	String email="";
	String password="";
	for (Login l : results) {
		if (l.getUser_name().equals(userName)) {
			city = l.getCity();
			phone_no = l.getPhone_no();
			email = l.getLogin_email();
			password = l.getLogin_password();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Anton|Righteous&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">

<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/myCss.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<title>Insert title here</title>


</head>
<body>
	<form method="post">
		<div class="container-fluid ">
			<div class="row justify-content-end p-2 bg-warning ">
				<div class="form-group m-1">
					<label style="font-family: 'Righteous', cursive;"
						class="text-danger">Book</label> <label
						style="font-family: 'Righteous', cursive;" class="text-dark">My</label>
					<label style="font-family: 'Righteous', cursive;"
						class="text-danger">Show</label> <label
						style="font-family: 'Righteous', cursive;" class="text-dark">,</label>
				</div>
				<div class=" form-group m-1 ">
					<label id="time"></label> <label id="userName">,<%=userName%></label>
				</div>
				<img src="./images/man.png" height="40" width="40"
					class="rounded-circle dropdown-toggle " id="profile"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

				<div class="dropdown-menu" aria-labelledby="profile">
					<div>
						<input type="submit" class="btn btn-link" value="Logout"
							formaction="./LoadMovies?cityName=logout">
					</div>

				</div>
			</div>
		</div>
		<div class="container">
			<div class="form-group row">
				<img src="./images/pop.png" width="350" height="350"
					class="img-responsive">
			</div>
			<div class="form-group">
				<label>Enter Full Name</label> <input type="text"
					class="form-control" name="userName" value=<%=userName%>>
			</div>
			<div class="form-group">
				<label>City</label> <input type="text" class="form-control" value=<%=city %>
					name="userCity">
			</div>
			<div class="form-group">
				<label>Phone No.</label> <input type="text" class="form-control" value=<%=phone_no%>
					name="userPhone">
			</div>
			<div class="form-group">
				<label>Enter Email</label> <input type="email" class="form-control" value=<%=email %>
					name="userEmail">
			</div>
			<div class="form-group">
				<label>Enter Password </label> <input type="password" value=<%=password %>
					class="form-control" name="userPass">
			</div>
			<input type="submit" class="btn btn-danger" value="Update"
				name="register" formaction="./RegisterUser?click=update">
			<input type="submit" class="btn btn-danger"
				value="Delete" formaction="./RegisterUser?click=delete">
		</div>
	</form>
	<script type="text/javascript">
		var date = new Date();
		var time = date.getHours();
		if (time < 12) {
			document.getElementById("time").innerText = "Good Morning";
		} else if (time > 12) {
			document.getElementById("time").innerText = "Good Afternoon";
		} else if (time === 12) {
			document.getElementById("time").innerText = "Good Night ";
		}
	</script>
</body>
</html>