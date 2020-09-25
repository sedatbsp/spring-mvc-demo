<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Confirmation</title>
</head>

<body>

<h3>Onaylanan Müşteri</h3>
<b>${customer.firstName } ${customer.lastName }</b>
<br><hr>
<b>Posta kodu: </b> ${customer.postalCode }  <br><br>
${customer.maxPurchase } adet satın aldınız.
<b>İndirim kodu: </b> ${customer.discountCode }  <br><br>
</body>

</html>

