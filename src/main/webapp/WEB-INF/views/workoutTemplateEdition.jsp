<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Edit workout template</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>

        <spring:message code = "app.title"/>

        <h3>${workoutTemplate.name  } - ${workoutTemplate.description  }</h3>
        <a href="/workoutTemplate/addPosition/${workoutTemplate.id}">Dodaj</a><BR><BR>

        <table  >
            <thead>
            <tr>
<%--                <th>Position Number</th>--%>
                <th>Repetitions</th>
                <th>Weight</th>
                <th>Exercise Mode</th>
                <th>Exercise</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="workoutPosition" items="${workoutLines}">
                <tr>
<%--                    <td>${workoutPosition.id}</td>--%>
                    <td>${workoutPosition.repetitions}</td>
                    <td>${workoutPosition.weight}</td>
                    <td>${workoutPosition.exerciseMode.name}</td>
                    <td>${workoutPosition.exercise.name}</td>
                    <td><a href = "/workoutTemplate/delete/${workoutPosition.workoutTemplate.id}/${workoutPosition.id}">Usuń</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <spring:message code = "app.footer"/>
    </body>
</html>
