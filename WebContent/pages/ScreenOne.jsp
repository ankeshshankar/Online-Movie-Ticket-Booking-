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

	//./LoadTickets?theaterName=<%=getTheater.getTheater_name()//==&place=&movieName=<%=movieName
	String theaterName = (String) session.getAttribute("theaterName");
	String place = (String) session.getAttribute("place");
	List<Theater> result = JpaConnection.getTheater();
%>

<!DOCTYPE html>
<html>
<head>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/myCss.css">
<link
	href="https://fonts.googleapis.com/css?family=Anton|Righteous&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta charset="UTF-8">
</head>
<body>
	<form>
		<div class="container-fluid m-1">
			<div class="d-flex justify-content-around ">
				<label style="font-family: 'Righteous', cursive;">Theater
					Name :<%=theaterName%></label> <label
					style="font-family: 'Righteous', cursive;">Location :<%=place%></label>
				<select class="dropdown btn ">
					<option selected>Select Show Time</option>
					<option value="08:30 AM">08:30 AM</option>
					<option value="08:35 AM">08:35 AM</option>
					<option value="09:30 AM">09:30 AM</option>
					<option value="11:00 AM">11:00 AM</option>
					<option value="12:05 PM">12:05 PM</option>
					<option value="02:45 PM">02:45 PM</option>
					<option value="04:00 PM">04:00 PM</option>
					<option value="04:15 PM">04:15 PM</option>
					<option value="05:30 PM">05:30 PM</option>
					<option value="05:15 PM">08:15 PM</option>
				</select>
			</div>
		</div>
		<div class="container-fluid justify-content-center py-1 m-3">
			<div class="col">
				<div>
					<label>=========================Platinum=============================</label>
				</div>
				<div class="container py-1">
					<label style="font-family: 'Righteous', cursive;">A</label>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a1">
						<label class="custom-control-label" for="a1">1</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a2">
						<label class="custom-control-label" for="a2">2</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a3">
						<label class="custom-control-label" for="a3">3</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a4">
						<label class="custom-control-label" for="a4">4</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a5">
						<label class="custom-control-label" for="a5">5</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a6">
						<label class="custom-control-label" for="a6">6</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a7">
						<label class="custom-control-label" for="a7">7</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a8">
						<label class="custom-control-label" for="a8">8</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a9">
						<label class="custom-control-label" for="a9">9</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="a10">
						<label class="custom-control-label" for="a10">10</label>
					</div>
				</div>
				<div class="container py-1">
					<label style="font-family: 'Righteous', cursive;">B</label>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b1">
						<label class="custom-control-label" for="b1">1</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b2">
						<label class="custom-control-label" for="b2">2</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b3">
						<label class="custom-control-label" for="b3">3</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b4">
						<label class="custom-control-label" for="b4">4</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b5">
						<label class="custom-control-label" for="b5">5</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b6">
						<label class="custom-control-label" for="b6">6</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b7">
						<label class="custom-control-label" for="b7">7</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b8">
						<label class="custom-control-label" for="b8">8</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b9">
						<label class="custom-control-label" for="b9">9</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="b10">
						<label class="custom-control-label" for="b10">10</label>
					</div>
				</div>
				<div>
					<label>===========================Gold==============================</label>
				</div>
				<div class="container py-1">
					<label style="font-family: 'Righteous', cursive;">C</label>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c1">
						<label class="custom-control-label" for="c1">1</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c2">
						<label class="custom-control-label" for="c2">2</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c3">
						<label class="custom-control-label" for="c3">3</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c4">
						<label class="custom-control-label" for="c4">4</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c5">
						<label class="custom-control-label" for="c5">5</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c6">
						<label class="custom-control-label" for="c6">6</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c7">
						<label class="custom-control-label" for="c7">7</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c8">
						<label class="custom-control-label" for="c8">8</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c9">
						<label class="custom-control-label" for="c9">9</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="c10">
						<label class="custom-control-label" for="c10">10</label>
					</div>
				</div>
				<div class="container py-1">
					<label style="font-family: 'Righteous', cursive;">D</label>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d1">
						<label class="custom-control-label" for="d1">1</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d2">
						<label class="custom-control-label" for="d2">2</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d3">
						<label class="custom-control-label" for="d3">3</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d4">
						<label class="custom-control-label" for="d4">4</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d5">
						<label class="custom-control-label" for="d5">5</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d6">
						<label class="custom-control-label" for="d6">6</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d7">
						<label class="custom-control-label" for="d7">7</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d8">
						<label class="custom-control-label" for="d8">8</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d9">
						<label class="custom-control-label" for="d9">9</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="d10">
						<label class="custom-control-label" for="d10">10</label>
					</div>
				</div>
				<div>
					<label>===========================Silver=============================</label>
				</div>
				<div class="container py-1">
					<label style="font-family: 'Righteous', cursive;">E</label>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e1">
						<label class="custom-control-label" for="e1">1</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e2">
						<label class="custom-control-label" for="e2">2</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e3">
						<label class="custom-control-label" for="e3">3</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e4">
						<label class="custom-control-label" for="e4">4</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e5">
						<label class="custom-control-label" for="e5">5</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e6">
						<label class="custom-control-label" for="e6">6</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e7">
						<label class="custom-control-label" for="e7">7</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e8">
						<label class="custom-control-label" for="e8">8</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e9">
						<label class="custom-control-label" for="e9">9</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="e10">
						<label class="custom-control-label" for="e10">10</label>
					</div>
				</div>
				<div>
					<label>===========================Screen============================</label>
				</div>
			</div>
		</div>
	</form>

</body>
</html>

