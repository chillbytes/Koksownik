<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CategoryList</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>
        <h1><spring:message code = "app.title" /> </h1>
        <h4><spring:message code = "app.footer" /> </h4>
        <h2>Kategorie ćwiczeń</h2>

        <a href="/category/add">Dodaj</a><BR>
        <table border="1">
            <tr>
<%--                <td>Id</td>--%>
                <td>Nazwa kategorii</td>
            </tr>
            <c:forEach var="category" items="${categories}" >
            <tr>
<%--                <td>${category.id}</td>--%>
                <td>${category.name}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
