<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <html>
    <head>
        <title>Workout Session Edition</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>

    </head>
    <body>
        <spring:message code = "app.title"/>


        <c:set var="ws" value="${workoutSession}" />
        <h3>Sesja: ${ws.name} </h3>
<%--        <h3>ID: ${ws.id} </h3>--%>


        <table>

            <form method="POST" modelAtribute="workoutSessionPositions" action = "/workoutSession/edit/${ws.id}">

                    <thead>
                        <tr>
                            <th>Ćwiczenie</th>
                            <th>Opis</th>
                            <th>Kategoria</th>
                            <th>Powtórzenia</th>
                            <th>Waga</th>
                            <th>Tryb</th>
                            <th>Zrobione</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="wsp" items="${workoutSessionPositions}">
                            <tr>

                                <input type="hidden" name="workoutSessionId" value="${ws.id}">

                                <td>${wsp.exerciseName}</td>
                                <td>${wsp.exerciseDescription}</td>
                                <td>${wsp.category}</td>

<%--                                <td><input type="number" name="repetitions" value="${wsp.repetitions}"></td>--%>
                                    <td>${wsp.repetitions}</td>
<%--                                <td><input type="number" name="weight" value="${wsp.weight}"></td>--%>
                                    <td>${wsp.weight}</td>
                                   <td>${wsp.exerciseMode}</td>

                                <td>
<%--                                    <label>--%>
<%--                                        <input type="checkbox" name="competed" value="true" ${wsp.completed ? "checked" : ""}>--%>
<%--                                        Zrobione--%>
<%--                                    </label>--%>
                                </td>








                            </tr>
                        </c:forEach>
                    </tbody>

                <button type="submit">Zapisz</button><BR><BR>
            </form>
        </table>


        <spring:message code = "app.footer"/>
    </body>
</html>
