<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<title>Customer Register Form</title>

<style>
	
	.error {
		padding:5px 20px 5px 20px;
		color: #9F6000;
    	background-color: #FEEFB3;
    	opacity: 1;
	}
	.error:hover {
		opacity: 0.5;
	}
	.closebtn {
	  margin-left: 15px;
	  color: white;
	  font-weight: bold;
	  float: right;
	  font-size: 22px;
	  line-height: 20px;
	  cursor: pointer;
	  transition: 0.3s;
	}
	.closebtn:hover {
	  color: black;
	}
	table {
	  width:100%;
	}
	table, th, td {
	  border: 1px solid black;
	  border-collapse: collapse;
	}
	th, td {
	  padding: 15px;
	  text-align: left;
	}
	
	input[type=text], select {
	  width: 100%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;
	}
	
	input[type=submit] {
	  width: 100%;
	  background-color: #4CAF50;
	  color: white;
	  padding: 14px 20px;
	  margin: 8px 0;
	  border: none;
	  border-radius: 4px;
	  cursor: pointer;
	}
	
	input[type=submit]:hover {
	  background-color: #45a049;
	}
	
	div {
	  border-radius: 5px;
	  background-color: #f2f2f2;
	  padding: 20px;
	}
	
</style>
</head>

<body>

	<form:form action="processForm" modelAttribute="customer">
		Adı<br>
		<form:input path="firstName"/><br>
		
		Soyadı (*) <form:errors path="lastName" cssClass="error"></form:errors>
		<form:input path="lastName"/>
		<br>
		
		Kaç adet : <form:errors path="maxPurchase" cssClass="error"></form:errors>
		<form:input path="maxPurchase"/>
		<br>
		
		Posta kodu : <form:errors path="postalCode" cssClass="error"></form:errors>
		<form:input path="postalCode"/>
		<br>
		
		İndirim kodu : <form:errors path="discountCode" cssClass="error"></form:errors>
		<form:input path="discountCode"/>
		<br>
		
		<br>
		<input type="submit" value="Gönder"/>
	
	</form:form>


</body>
</html>