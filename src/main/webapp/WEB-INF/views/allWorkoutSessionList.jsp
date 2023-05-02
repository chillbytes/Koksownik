<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Workout sessions list</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>

    <spring:message code = "app.title"/>
    <%--    model.addAttribute("workoutSession", workoutSession ;--%>
    <%--    model.addAttribute("workoutSessionPositions", workoutSessionPositions );--%>

    <h2>Sesje treningowe</h2>

    <table  >
        <tr>
            <%--            <td>Id</td>--%>
            <th>Nazwa</th>
            <th>Ćwiczenia</th>

        </tr>
        <c:forEach var="ws" items="${workoutSessions}" >
            <tr>
            <%--<td>${workoutTemp.id}</td>--%>
                <td>${ws.name} - ${ws.sessionDate} ${ws.sessionTime}</td>
                <td><a href = "/workoutSession/position/${ws.id}">Ćwiczenia</a> </td>

            </tr>
        </c:forEach>
    </table>

    <spring:message code = "app.footer"/>



    </body>
</html>
