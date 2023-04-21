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
<%-- --%>

<%--    <table>--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Workout ID</th>--%>
<%--            <th>Workout Name</th>--%>
<%--            <th>Workout Description</th>--%>
<%--            <th>Position ID</th>--%>
<%--            <th>Position Number</th>--%>
<%--            <th>Repetitions</th>--%>
<%--            <th>Weight</th>--%>
<%--            <th>Exercise Mode ID</th>--%>
<%--            <th>Exercise Mode Name</th>--%>
<%--            <th>Exercise Mode Description</th>--%>
<%--            <th>Exercise ID</th>--%>
<%--            <th>Exercise Name</th>--%>
<%--            <th>Exercise Description</th>--%>
<%--            <th>Body Part ID</th>--%>
<%--            <th>Body Part Name</th>--%>
<%--            <th>Category ID</th>--%>
<%--            <th>Category Name</th>--%>
<%--            <th>Category Multiplier</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach items="${workoutTemplates}" var="data">--%>
<%--            <tr>--%>
<%--                <td>${data[0]}</td>--%>
<%--                <td>${data[1]}</td>--%>
<%--                <td>${data[2]}</td>--%>
<%--                <td>${data[3]}</td>--%>
<%--                <td>${data[4]}</td>--%>
<%--                <td>${data[5]}</td>--%>
<%--                <td>${data[6]}</td>--%>
<%--                <td>${data[7]}</td>--%>
<%--                <td>${data[8]}</td>--%>
<%--                <td>${data[9]}</td>--%>
<%--                <td>${data[10]}</td>--%>
<%--                <td>${data[11]}</td>--%>
<%--                <td>${data[12]}</td>--%>
<%--                <td>${data[13]}</td>--%>
<%--                <td>${data[14]}</td>--%>
<%--                <td>${data[15]}</td>--%>
<%--                <td>${data[16]}</td>--%>
<%--                <td>${data[17]}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>


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


<%--    <c:forEach items="${workoutLines}" var="workoutTemplate">--%>
<%--        <p>Workout Name: ${workoutTemplate.name}</p>--%>
<%--        <p>Workout Description: ${workoutTemplate.description}</p>--%>
<%--        <c:forEach items="${workoutTemplate.workoutPositions}" var="workoutPosition">--%>
<%--            <p>Position Number: ${workoutPosition.positionNumber}</p>--%>
<%--            <p>Exercise Name: ${workoutPosition.exercise.name}</p>--%>
<%--            <p>Exercise Description: ${workoutPosition.exercise.description}</p>--%>
<%--            <p>Weight: ${workoutPosition.weight}</p>--%>
<%--            <p>Repetitions: ${workoutPosition.repetitions}</p>--%>
<%--            <p>Exercise Mode Name: ${workoutPosition.exerciseMode.name}</p>--%>
<%--        </c:forEach>--%>
<%--    </c:forEach>--%>



<%--    <c:forEach items="${workoutLines}" var="workoutLine">--%>
<%--        <p>Position Number: ${workoutLine.positionNumber}</p>--%>
<%--        <p>Workout Name: ${workoutLine.workoutName}</p>--%>
<%--        <p>Workout Description: ${workoutLine.workoutDescription}</p>--%>
<%--        <p>Exercise Name: ${workoutLine.exerciseName}</p>--%>
<%--        <p>Exercise Description: ${workoutLine.exerciseDescription}</p>--%>
<%--        <p>Weight: ${workoutLine.weight}</p>--%>
<%--        <p>Repetitions: ${workoutLine.repetitions}</p>--%>
<%--        <p>Exercise Mode Name: ${workoutLine.exerciseModeName}</p>--%>
<%--    </c:forEach>--%>




    <%--    <H1>Edycja treningu ${workoutLines[0].name}</H1>--%>
<%--    <H3>${workoutLines[0].description}</H3>--%>


<%--    <table border="1">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>ID</th>--%>
<%--            <th>Name</th>--%>
<%--            <th>Description</th>--%>
<%--            <th>Position Number</th>--%>
<%--            <th>Repetitions</th>--%>
<%--            <th>Weight</th>--%>
<%--            <th>Exercise ID</th>--%>
<%--            <th>Exercise Name</th>--%>
<%--            <th>Exercise Description</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="workoutLine" items="${workoutLines}">--%>
<%--            <tr>--%>
<%--                <td>${workoutLine.id}</td>--%>
<%--                <td>${workoutLine.name}</td>--%>
<%--                <td>${workoutLine.description}</td>--%>
<%--                <td>${workoutLine.workoutPosition.positionNumber}</td>--%>
<%--                <td>${workoutLine.workoutPosition.repetitions}</td>--%>
<%--                <td>${workoutLine.workoutPosition.weight}</td>--%>
<%--                <td>${workoutLine.workoutPosition.exercise.id}</td>--%>
<%--                <td>${workoutLine.workoutPosition.exercise.name}</td>--%>
<%--                <td>${workoutLine.workoutPosition.exercise.description}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>


    <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>