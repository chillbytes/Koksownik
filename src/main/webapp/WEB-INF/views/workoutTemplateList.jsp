<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>WorkoutTemplateList</title>
    </head>
    <body>

    <h1><spring:message code = "app.title" /> </h1><BR>

    <h2> Workout templates</h2>



    <table border="1">
        <tr>
            <td>Id</td>
            <td>Nazwa szablonu</td>
            <td>Opis</td>
            <td>Edycja</td>
        </tr>
        <c:forEach var="workoutTemp" items="${workoutTemplates}" >
            <tr>
                <td>${workoutTemp.id}</td>
                <td>${workoutTemp.name}</td>
                <td>${workoutTemp.description}</td>
                <td><a href = "/workoutTemplate/edit/${workoutTemp.id}">Edytuj</a> </td>
            </tr>
        </c:forEach>
    </table>



    <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
