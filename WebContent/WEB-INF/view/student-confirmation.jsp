<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Form Confirmation</title>

<style>
table {
  width:50%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}

}
</style>
</head>
<body>


<hr>

<h3><b>Onaylanan öğrenciler :</b> </h3>
<br><hr>
Şehir : ${student.city} |  <!-- student.getCity -->
${student.firstName} ${student.lastName }  <!--calls student.getFirstName & getLastName -->

<table>
  <tr>
    <th>ADI</th>
    <th>SOYADI</th> 
    <th>BAŞVURDUĞU EĞİTİM</th>
    <th>DENEYİM ALANLARI</th>
    <th>YAŞADIĞI ŞEHİR</th>
  </tr>
  <tr>
    <td>${student.firstName} <!--calls student.getFirstName --></td>
    <td>${student.lastName } <!--calls student.getLastName --></td>
    <td>${student.course} <!-- student.getCourse --></td>
    <td>
     <!-- ExperiencedArea -->
     	<ul>
     		<c:forEach var="temp" items="${student.experiencedArea}">
     			<li>${temp }</li>
     		</c:forEach>
     	</ul>
     </td>
    <td>${student.city} <!-- student.getCity --></td>
  </tr>
</table>

</body>
</html>