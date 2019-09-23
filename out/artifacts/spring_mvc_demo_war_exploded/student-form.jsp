<%--
  Created by IntelliJ IDEA.
  User: vsonu
  Date: 18-08-2019
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>student Registration form</title>
</head>
<body>
<form:form action="studentProcessForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br>
    Last name: <form:input path="lastName"/>
    <br>
    Country:
    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
<%--        <form:option value="France" label="France"/>
        <form:option value="India" label="India"/>
        <form:option value="Brazil" label="Brazil"/>
        <form:option value="Germany" label="Germany"/>--%>
    </form:select>
    <br>
    Favorite Language:
    <br>
    <form:radiobutton path="favoriteLanguage" value="Java"/> Java
    <form:radiobutton path="favoriteLanguage" value="C"/> C
    <form:radiobutton path="favoriteLanguage" value="C++"/> C++
    <form:radiobutton path="favoriteLanguage" value="Python"/> Python
    <br>
    Favorite Operating Systems:
    <br>
    <form:checkbox path="os" value="Linux"/>Linux
    <form:checkbox path="os" value="Windows"/>Windows
    <form:checkbox path="os" value="Red Hat"/>Red Hat
    <form:checkbox path="os" value="Mac OS"/>Mac OS
    <br>
    <input type="submit" value="submit"/>
</form:form>
</body>
</html>
