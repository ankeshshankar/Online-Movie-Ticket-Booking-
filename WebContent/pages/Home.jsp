<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.util.List"%>

<%@page import="com.show.Entity.City"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.show.Database.JpaConnection"%>

<%
	List<City> results = JpaConnection.getCity();
	String userName = (String) session.getAttribute("userName");
%>
<!DOCTYPE html>
<html>
<head>
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

<script>
	$(document).ready(function() {
		$('#cityTable').on('click', 'tr', function() {
			//get row contents into an array
			var tableData = $(this).children("td").map(function() {
				return $(this).text();
			}).get();
			var td = tableData[1];
			//alert(td);
		});
	});
</script>
<title>Select City</title>
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
						<input type="submit" class="btn btn-link" value="View Profile"
							formaction="./LoadMovies?cityName=profile">
					</div>
					<div>
						<input type="submit" class="btn btn-link" value="Logout"
							formaction="./LoadMovies?cityName=logout">
					</div>

				</div>

			</div>
		</div>
		<div class="container">
			<div class="table-responsive">
				<table id="cityTable" class="table black white-text ">
					<thead>
						<tr>
							<th scope="col"><img src="./images/home.png"
								class="img-responsive"></th>
							<th scope="col" style="font-family: 'Righteous', cursive;">City
								Name</th>
							<th scope="col" style="font-family: 'Righteous', cursive;">Pincode</th>
							<th scope="col"><img src="./images/video-camera.png"
								class="img-responsive"></th>
						</tr>
					</thead>
					<tbody>
						<%
							int no = 1;
							for (City getCity : results) {
						%>
						<tr>
							<td class="bg-success"><img src="./images/<%=no%>.png"
								class="img-responsive"></td>
							<td class="bg-danger" id="city"
								style="font-family: 'Righteous', cursive;"><%=getCity.getCity_name()%></td>
							<td class="bg-warning" style="font-family: 'Righteous', cursive;"><%=getCity.getCity_pincode()%></td>
							<td><input type="submit" class="btn btn-danger"
								value="View Movies" id="city"
								formaction="./LoadMovies?cityName=<%=getCity.getCity_name()%>"
								name="veiwMovies"></td>
						</tr>
						<%
							no++;
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</form>
</body>
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
</html>