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

        <h3>Sesja: ${workoutSession.name} </h3>


        <table>
            <thead>
                <tr>
                    <th>Nazwa ćwiczenia</th>
                    <th>Opis ćwiczenia</th>
                    <th>Kategoria</th>
                    <th>Powtórzenia</th>
                    <th>Waga</th>
                    <th>Tryb ćwiczenia</th>
                    <th>Wykonano</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${workoutSessionPositions}" var="wsp">
                <tr>
                    <td>${wsp.exerciseName}</td>
                    <td>${wsp.exerciseDescription}</td>
                    <td>${wsp.category}</td>
                    <td>${wsp.repetitions}</td>
                    <td>${wsp.weight}</td>
                    <td>${wsp.exerciseMode}</td>
                    <td> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>




        <spring:message code = "app.footer"/>
    </body>
</html>
