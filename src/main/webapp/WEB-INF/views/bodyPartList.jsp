
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>BodyPartlist</title>
    </head>
    <body>
        <h1><spring:message code = "app.title" /> </h1><BR>
        <h2>Tutaj lista BodyPart</h2>
        <p>Wyświetlanie listy body parts</p>
        <a href="/bodyPart/add">Add body part</a><BR>
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Nazwa</td>
                <td>ctrl</td>
            </tr>
            <c:forEach var="bodyPart" items="${bodyParts}" >
                <tr>

                    <td>${bodyPart.id}</td>
                    <td>${bodyPart.name}</td>
                    <td>ctrl</td>
                </tr>
            </c:forEach>
        </table>
        <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
