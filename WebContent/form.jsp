<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="com.community.Zip" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Form Page</title>
</head>
<body>
	<form method="post" action="FormServlet">
		<div class="row">
			<div class="col-md-5">
			Posting Title:<input type="text" name="title">
			</div>
			<br/>
			<div class="col-md-5">
			City:<input type="text" name="city">
			</div>
			<br/>
			<div class="col-md-2">
			Pin Code:<input type="text" name="pin">
			</div>
			<br/>
		</div>
		<div class="form-group">
			<label for="comment">Description</label><br/>
			<textarea class="form-control" rows="5" name="desc"></textarea>
		</div>
		<h4>Contact Info</h4>
		<div class="row">
			<div class="col-md-4">
				Email:<input type="text" name="email">
				<h6>Email Privacy Options</h6>
				<div class="radio">
					<label><input type="radio" name="emailopt" checked>CL
						may relay</label>
				</div>
				<div class="radio">
					<label><input type="radio" name="emailopt">no
						replies to this email</label>
				</div>
			</div>
			<div class="col-md-8">
				<h4>Phone Number:</h4>
				<div class="checkbox">
					<label><input type="checkbox" value="">show my phone number</label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" value="" disabled>phone calls OK</label>
				</div>
				<div class="checkbox disabled">
					<label><input type="checkbox" value="" disabled>text/sms OK</label>
				</div>
			</div>
			<br/>
			Phone Number:<input type="number" name="phone">
		</div>
		<br/>
		<label><input type="checkbox" value="">ok for others to contact you about other services.</label>
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