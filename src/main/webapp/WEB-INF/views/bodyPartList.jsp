
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>BodyPartlist</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>


        <spring:message code = "app.title"/>

        <h2>Grupy mięśniowe</h2>
        <a href="/bodyPart/add">Dodaj</a><BR>
        <table >
            <tr>
<%--                <td>Id</td>--%>
                <th>Nazwa części ciała</th>
<%--                <td>ctrl</td>--%>
            </tr>
            <c:forEach var="bodyPart" items="${bodyParts}" >
                <tr>

<%--                    <td>${bodyPart.id}</td>--%>
                    <td>${bodyPart.name}</td>
<%--                    <td>ctrl</td>--%>
                </tr>
            </c:forEach>
        </table>

        <spring:message code = "app.footer"/>
    </body>
</html>
