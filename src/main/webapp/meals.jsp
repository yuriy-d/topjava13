<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>meals</h2>
<table>
    <c:forEach items="${meals}" var="meals">
        <tr>
            <td>${meals.dateTime}</td>
            <td>${meals.description}</td>
            <td>${meals.calories}</td>
            <c:if test="${meals.exceed = true}" >
                <td bgcolor="#a52a2a">${meals.exceed}</td>
            </c:if>
            <c:if test="${meals.exceed = false}" >
                <td bgcolor="#006400">${meals.exceed}</td>
            </c:if>
        </tr>
    </c:forEach>
</table>

</body>
</html>