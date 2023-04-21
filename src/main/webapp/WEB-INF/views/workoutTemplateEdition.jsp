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




        <c:forEach items="${workoutLines}" var="workoutTemplate">
        <H3>${workoutTemplate.name}</H3>
        <H4>${workoutTemplate.description}</H4>
        </c:forEach>
        <table border = 1>
            <thead>
            <tr>
                <th>Workout Name</th>
                <th>Workout Description</th>
                <th>Position Number</th>
                <th>Exercise Name</th>
                <th>Exercise Description</th>
                <th>Weight</th>
                <th>Repetitions</th>
                <th>Exercise Mode Name</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${workoutLines}" var="workoutTemplate">
                <c:forEach items="${workoutTemplate.workoutPositions}" var="workoutPosition">
                    <tr>
                        <td>${workoutTemplate.name}</td>
                        <td>${workoutTemplate.description}</td>
                        <td>${workoutPosition.positionNumber}</td>
                        <td>${workoutPosition.exercise.name}</td>
                        <td>${workoutPosition.exercise.description}</td>
                        <td>${workoutPosition.weight}</td>
                        <td>${workoutPosition.repetitions}</td>
                        <td>${workoutPosition.exerciseMode.name}</td>
                    </tr>
                </c:forEach>
            </c:forEach>
            </tbody>
    </table>

    <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>