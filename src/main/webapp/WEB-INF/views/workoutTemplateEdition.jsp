<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>WorkoutTemplateEdition</title>
    </head>
    <body>
    <h1><spring:message code = "app.title" /> </h1><BR>

    <H1>Edycja treningu ${workoutLines[0].name}</H1>
    <H3>${workoutLines[0].description}</H3>


    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Position Number</th>
            <th>Repetitions</th>
            <th>Weight</th>
            <th>Exercise ID</th>
            <th>Exercise Name</th>
            <th>Exercise Description</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="workoutLine" items="${workoutLines}">
            <tr>
                <td>${workoutLine.id}</td>
                <td>${workoutLine.name}</td>
                <td>${workoutLine.description}</td>
                <td>${workoutLine.workoutPosition.positionNumber}</td>
                <td>${workoutLine.workoutPosition.repetitions}</td>
                <td>${workoutLine.workoutPosition.weight}</td>
                <td>${workoutLine.workoutPosition.exercise.id}</td>
                <td>${workoutLine.workoutPosition.exercise.name}</td>
                <td>${workoutLine.workoutPosition.exercise.description}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>