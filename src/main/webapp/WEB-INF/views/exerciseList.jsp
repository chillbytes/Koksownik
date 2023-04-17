<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Excercise List</title>
    </head>
    <body>
        <h1><spring:message code = "app.title" /> </h1><BR>


        <h2>Tutaj lista Exercise</h2>
        <p>Wyświetlanie listy exercise</p>

        <table border="1">
            <tr>
                <td>Id</td>
                <td>Nazwa ćwiczenia</td>
                <td>Opis</td>
            </tr>
            <c:forEach var="exercise" items="${exercises}" >
                <tr>
                    <td>${exercise.id}</td>
                    <td>${exercise.name}</td>
                    <td>${exercise.description}</td>
                </tr>
            </c:forEach>
        </table>


        <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
<%--e.id, e.name, b.name, c.name--%>