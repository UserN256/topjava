<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%-- @ page import="ru.javawebinar.topjava.util.MealHW01Util" --%>
<%-- @ page import="ru.javawebinar.topjava.model.Meal" --%>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>Имя</th>
        <th>id другого объекта</th>
        <th>Имя другого объекта</th>
    </tr>
    </thead>
    <tbody>
    <jsp:useBean id="listExample" scope="session" type="ru.javawebinar.topjava.util.MealHW01Util.meals"/>
    <c:forEach items="${listExample}" var="listValue">
        <tr>
            <td>${listValue.id}</td>
            <td>${listValue.name}</td>
            <td>${listValue.otherObject.id}</td>
            <td>${listValue.otherObject.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
