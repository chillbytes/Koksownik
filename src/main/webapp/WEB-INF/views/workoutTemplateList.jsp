<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>WorkoutTemplateList</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>
    
        <spring:message code = "app.title"/>

        <h2>Szablony</h2>

        <a href="/workoutTemplate/add">Dodaj</a><BR>
        <table  >
            <tr>
    <%--            <td>Id</td>--%>
                <th>Nazwa szablonu</th>
                <th>Opis</th>
                <th>Edycja</th>
                <th>Trening</th>
            </tr>
            <c:forEach var="workoutTemp" items="${workoutTemplates}" >
                <tr>
    <%--                <td>${workoutTemp.id}</td>--%>
                    <td>${workoutTemp.name}</td>
                    <td>${workoutTemp.description}</td>
                    <td><a href = "/workoutTemplate/edit/${workoutTemp.id}">Edytuj</a> </td>
                    <td><a href = "/workoutSession/add/${workoutTemp.id}">Rozpocznij</a> </td>
                </tr>
            </c:forEach>
        </table>

        <spring:message code = "app.footer"/>

    </body>
</html>
