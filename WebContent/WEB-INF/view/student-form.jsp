<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Form</title>


<style>

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

<h3>Öğrenci Başvuru Form </h3>
<hr>

	<form:form action="processForm" modelAttribute="student">
	
		<label>Adınız</label> 
		<form:input path="firstName"/> <!-- property of Student class -->
		<br><br>
		<label>Soyadınız</label> 
		<form:input path="lastName"/> <!-- property of Student class -->
		<br><br>
		
		<label>Yaşadığınız Şehir</label>
		<form:select path="city"> <!-- Spring will call student.setCity .. -->
			<form:options items="${student.cityOptions}"/>
			<!--  
			<form:option value="Adana" label="Adana"/>
			<form:option value="İstanbul" label="İstanbul"/>
			<form:option value="Ankara" label="Ankara"/>
			<form:option value="Bursa" label="Bursa"/>
			<form:option value="İzmir" label="İzmir"/>
			<form:option value="Kocaeli" label="Kocaeli"/>
			-->
		
		</form:select>
		
		<table style="width:100%">
		  <tr>
		    <th colspan="2" style="font-weight: normal;">Almak istediğiniz eğitim</th>
		  </tr>
		  <tr>
		    <td><form:radiobutton path="course" value="Java"/>Java </td>
		    <td><form:radiobutton path="course" value="C#"/>C# </td>
		  </tr>
		  <tr>
		    <td><form:radiobutton path="course" value="JavaScript"/>JavaScript </td>
		    <td><form:radiobutton path="course" value="Ruby"/>Ruby </td>
		  </tr>
		  <tr>
		    <td><form:radiobutton path="course" value="Kotlin"/>Kotlin </td>
		    <td><form:radiobutton path="course" value="FlutterDart"/>Flutter & Dart </td>
		  </tr>
		  <tr>
		  	<th colspan="2" style="font-weight: normal;">
		  		Daha önce deneyimlediğiniz alanlar (varsa)<br><hr>
		  		<form:checkbox path="experiencedArea" value="Web Development"/>Web Development 
				<form:checkbox path="experiencedArea" value="Mobile Development"/>Mobile Development 
				<form:checkbox path="experiencedArea" value="Desktop App Development"/>Desktop App Development 
				<form:checkbox path="experiencedArea" value="Back-end Development"/>Back-end Development 
		  	</th>
		  </tr>
		</table>
		
		<br>
		
		
		
		<input type="submit" value="Gönder">
	
	</form:form>

</body>
</html>