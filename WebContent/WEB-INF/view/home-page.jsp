<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>

<style>
body {margin:0;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}

.content {
	margin:20px;
	padding:5px;
}

</style>

</head>

<body>

<h3>Spring MVC > Home Page </h3>

<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="showForm">Giriş Yap</a></li>
  <li><a href="student/showForm">Öğrenci Girişi</a></li>
  <li><a href="customer/showForm">Müşteri Girişi</a></li>
</ul>
<div class="content">
	Giriş yapmak için <b><a href="showForm">buraya tıklayınız. </a></b>
	
	<br><hr>
	Öğrenci girişi yapmak için <b><a href="student/showForm">buraya tıklayınız. </a></b>
	
	<br><hr>
	
	Müşteri girişi yapmak için <b><a href="customer/showForm">buraya tıklayınız. </a></b>

</div>

</body>
</html>