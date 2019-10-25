<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="com.community.Zip" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
</head>
<body>
	<form method="post" action="IndexServlet">
	<h3>What Type of Posting is this:</h3>
		<h3>Job Offers:</h3>
		<div class="radio">
			<label><input type="radio" name="optradio" value="job offered">Job Offered</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="gig offered">Gig Offered</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="job wanted">Resume/Job Wanted</label>
		</div>
		<br /> <br />
		<h3>Housing:</h3>
		<div class="radio">
			<label><input type="radio" name="optradio" value="housing offered">Housing Offered</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="housing wanted">Housing Wanted</label>
		</div>
		<br /> <br />
		<h3>Sale:</h3>
		<div class="radio">
			<label><input type="radio" name="optradio" value="sale by owner">For Sale by Owner</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="sale by dealer">For Sale by Dealer</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="wanted by owner">Wanted by Owner</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="wanted by dealer">Wanted by Dealer</label>
		</div>
		<br /> <br />
		<h3>Services:</h3>
		<div class="radio">
			<label><input type="radio" name="optradio" value="services offered">Service Offered</label>
		</div>
		<br /> <br />
		<h3>Community Events:</h3>
		<div class="radio">
			<label><input type="radio" name="optradio" value="community">Community</label>
		</div>
		<div class="radio">
			<label><input type="radio" name="optradio" value="events">Events/Classes</label>
		</div>
		<br/>

		<input type="submit" value="Continue">

	</form>

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>