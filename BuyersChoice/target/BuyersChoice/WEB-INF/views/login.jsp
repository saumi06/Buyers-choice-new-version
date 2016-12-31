<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<h3>Hello, Guest<br></h3>
<br>
<sf:form action="loginuser" method="post" commandName="user" class="form-horizontal">
 <div class="well">
 	<div class=" form-group">
	<label class=" control-label col-sm-2" for="username">Username:</label>
		<div class="col-sm-10">
			<sf:input  path="username" type="text" class="form-control col-sm-10" id="username" 
			placeholder="Enter desired username(min length: 3)" pattern=".{3,15}" required="true"  /> 
		</div>
	</div>
	<div class="form-group">
	<label class=" control-label col-sm-2" for="pswrd">Password:</label>
		<div class="col-sm-10">
			<sf:input type="password" path="password" class="form-control" id="pswrd" placeholder="Enter desired password"/>
		</div>
	</div>
	</div>

</sf:form>


</body>
</html>