<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CategoryList</title>
    </head>
    <body>
        <h1><spring:message code = "app.title" /> </h1><BR>
        <h2>Tutaj lista Category</h2>
        <p>Wyświetlanie listy category</p>
        <a href="/category/add">Add category</a><BR>
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Nazwa</td>
            </tr>
            <c:forEach var="category" items="${categories}" >
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
            </tr>
            </c:forEach>
        </table>

        <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
