<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1><spring:message code = "app.title" /> </h1><BR>

    <table border = 1>
        <thead>
        <tr>
            <th>ID</th>
            <th>Position Number</th>
            <th>Workout Name</th>
            <th>Workout Description</th>
            <th>Element Name</th>
            <th>Element Description</th>
            <th>Weight</th>
            <th>Repetitions</th>
            <th>Exercise Mode Name</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${workoutLines2}" var="workoutLine">
            <tr>
                <td>${workoutLine.id}</td>
                <td>${workoutLine.position_number}</td>
                <td>${workoutLine.workoutName}</td>
                <td>${workoutLine.workoutDesc}</td>
                <td>${workoutLine.elementName}</td>
                <td>${workoutLine.elementDesc}</td>
                <td>${workoutLine.weight}</td>
                <td>${workoutLine.repetitions}</td>
                <td>${workoutLine.excerciseModeName}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <h3><spring:message code = "app.footer" /> </h3><BR>
</body>
</html>
