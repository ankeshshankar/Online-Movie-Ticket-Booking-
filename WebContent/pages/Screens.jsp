<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.util.List"%>

<%@page import="com.show.Entity.*"%>
<%@page import="com.show.Database.JpaConnection"%>

<%
	List<Movie> results = JpaConnection.getMovie();
	String movieName = (String) request.getAttribute("movieName");
	String cityName = (String) session.getAttribute("cityName");
	String userName = (String) session.getAttribute("userName");
	List<Theater> result = JpaConnection.getTheater();
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/myCss.css">
<link
	href="https://fonts.googleapis.com/css?family=Anton|Righteous&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="./js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Select Movie</title>
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
		<div class="container-fluid py-1" id="movieCard">
			<div class="row">
				<%
					int no = 1;
					for (Movie getMovie : results) {
						if (getMovie.getMovie_name().equals(movieName)) {
				%>
				<div class="cal-sm-4 m-2 ">
					<div class="card h-100" style="width: 14rem;">
						<img class="card-img-top" src="./images/movie/<%=no%>.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title movieName"
								style="font-family: 'Righteous', cursive;"><%=getMovie.getMovie_name()%></h5>
							<p class="card-text"><%=getMovie.getMovie_about()%></p>
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item"><%=getMovie.getMovie_release_date()%></li>
							<li class="list-group-item"><%=getMovie.getMovie_lang()%></li>
						</ul>
					</div>
				</div>
				<%
					}
						no++;
					}
				%>
				<div class="container">
					<div id="chooseScreen">
						<div class="d-flex justify-content-center">
							<label class="text-danger"
								style="font-family: 'Righteous', cursive;">Current
								Location :- <%=cityName%></label>
						</div>
						<div class="table-responsive">
							<table id="cityTable" class="table black white-text ">
								<thead>
									<tr>
										<th scope="col" style="font-family: 'Righteous', cursive;"><img
											src="./images/loca.png" class="img-responsive"></th>
										<th scope="col" style="font-family: 'Righteous', cursive;">Theater
											Name</th>
										<th scope="col" style="font-family: 'Righteous', cursive;">Address</th>
										<th scope="col" style="font-family: 'Righteous', cursive;"></th>
									</tr>
								</thead>
								<tbody>
									<%
										for (Theater getTheater : result) {
											if (getTheater.getTheater_place().equals(cityName)) {
									%>
									<tr>
										<td style="font-family: 'Righteous', cursive;"><img
											src="./images/loc.png" class="img-responsive"></td>
										<td style="font-family: 'Righteous', cursive;"><%=getTheater.getTheater_name()%></td>
										<td style="font-family: 'Righteous', cursive;"><%=getTheater.getTheater_address()%></td>
										<td><input type="submit" class="btn btn-danger"
											value="Book Tickets" formaction="./LoadTickets?theaterName=<%=getTheater.getTheater_name()%>&place=<%=getTheater.getTheater_address()%>&movieName=<%=movieName%>"></td>
									</tr>
									<%
										}
										}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
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

