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
        <th>Время</th>
        <th>Какая еда</th>
        <th>Сколько калорий</th>
    </tr>
    </thead>
    <tbody>
    <jsp:useBean id="listExample" scope="session" type="ru.javawebinar.topjava.util.MealHW01Util.meals"/>
    <c:forEach items="${listExample}" var="listValue">
        <jsp:useBean id="listValue" scope="session" type="ru.javawebinar.topjava.model.Meal"/>
        <tr>
            <td>${listValue.dateTime}</td>
            <td>${listValue.description}</td>
            <td>${listValue.calories}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
