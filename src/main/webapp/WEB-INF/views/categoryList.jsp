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

        <spring:message code = "app.title"/>


        <h2>Kategorie ćwiczeń</h2>

        <a href="/category/add">Dodaj</a><BR>
        <table  >

                <tr>
    <%--                <td>Id</td>--%>
                    <th>Nazwa kategorii</th>
                </tr>

            <c:forEach var="category" items="${categories}" >
            <tr>
<%--                <td>${category.id}</td>--%>
                <td>${category.name}</td>
            </tr>
            </c:forEach>
        </table>

        <spring:message code = "app.footer"/>
    </body>
</html>
