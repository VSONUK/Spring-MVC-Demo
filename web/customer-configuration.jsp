<%--
  Created by IntelliJ IDEA.
  User: vsonu
  Date: 19-08-2019
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Configuration</title>
</head>
<body>
The Customer is Confirmed: ${customer.firstName} ${customer.lastName}<br>
country: ${customer.customerAddress.country}<br>
city: ${customer.customerAddress.city}<br>
street: ${customer.customerAddress.street}<br>
pin code: ${customer.customerAddress.pincode}
</body>
</html>
