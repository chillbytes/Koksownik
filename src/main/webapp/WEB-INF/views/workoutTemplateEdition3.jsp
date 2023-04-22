<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Edit workout template</title>
    </head>
    <body>

    <h1><spring:message code = "app.title" /> </h1><BR>

    <c:forEach items="${workoutLines}" var="workoutPosition" varStatus="status">
        <c:if test="${status.index == 0}">
        <H3>${workoutPosition.workoutTemplate.name   }</H3>
        <H4>${workoutPosition.workoutTemplate.description}</H4>
        </c:if>
    </c:forEach>


        <table border = 1>
            <thead>
            <tr>
                <th>Position Number</th>
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
                    <td>${workoutPosition.positionNumber}</td>
                    <td>${workoutPosition.repetitions}</td>
                    <td>${workoutPosition.weight}</td>
                    <td>${workoutPosition.exerciseMode.name}</td>
                    <td>${workoutPosition.exercise.name}</td>
                    <td><a href = "/workoutTemplate/delete/${workoutPosition.workoutTemplate.id}/${workoutPosition.id}">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
