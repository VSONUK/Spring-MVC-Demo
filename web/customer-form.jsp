<%--
  Created by IntelliJ IDEA.
  User: vsonu
  Date: 19-08-2019
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error{color:red}
    </style>
</head>
<body>
<i>Fill out the form. Asterisk(*) means required.</i>
<form:form action="customerProcessForm" modelAttribute="customer">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name (*): <form:input path="lastName" />
<%--    <form:errors path="lastName" cssClass="error"/>--%>
    <br><br>
    Country: <form:input path="customerAddress.country"/><br>
    City: <form:input path="customerAddress.city"/><br>
    Street: <form:input path="customerAddress.street"/><br>
    Pin code: <form:input path="customerAddress.pincode"/><br>
    <input type="submit" value="submit"/>
    <form:errors path="customerAddress.pincode"/>
</form:form>
</body>
</html>
