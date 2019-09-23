<%--
  Created by IntelliJ IDEA.
  User: vsonu
  Date: 18-08-2019
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>
The Student is Confirmed: ${student.firstName} ${student.lastName}
<br><br>
Country: ${student.country}
<br><br>
Favorite Language: ${student.favoriteLanguage}
<br><br>
Operating Systems:
<ul>
    <c:forEach var="temp" items="${student.os}">
        <li>${temp}</li>
    </c:forEach>
</ul>
</body>
</html>
