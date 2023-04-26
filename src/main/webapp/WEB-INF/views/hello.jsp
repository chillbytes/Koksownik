<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <title>Get Strong!</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>

    <body>
        <spring:message code = "app.title" />
<%--        <spring:message code = "app.footer" /> --%>


<%--        <tr>--%>
<%--            <td><a href="/bodyPart/list">Części ciała</a></td>--%>
<%--            <td><a href="/category/list">Kategorie</a></td>--%>
<%--            <td><a href="/exercise/list">Ćwiczenia</a></td>--%>
<%--            <td><a href="/exerciseMode/list">Tryby</a></td>--%>
<%--            <td><a href="/workoutTemplate/list">Szablony</a></td>--%>
<%--        </tr><BR>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <a href="/bodyPart/list" class="btn btn-primary" style="color: white; background-color: #007bff;">Części ciała</a>--%>
<%--                <a href="/category/list" class="btn btn-primary" style="color: white; background-color: #007bff;">Kategorie</a>--%>
<%--                <a href="/exercise/list" class="btn btn-primary" style="color: white; background-color: #007bff;">Ćwiczenia</a>--%>
<%--                <a href="/exerciseMode/list" class="btn btn-primary" style="color: white; background-color: #007bff;">Tryby</a>--%>
<%--                <a href="/workoutTemplate/list" class="btn btn-primary" style="color: white; background-color: #007bff;">Szablony</a>--%>
<%--            </td>--%>
<%--        </tr><BR>--%>



        <a href = "/bodyPart/add">Nowa grupa mięśniowa</a><br>
        <a href = "/category/add">Nowa kategoria</a><br>
        <a href = "/exercise/add">Nowe ćwiczenie</a><br>
        <a href = "/exerciseMode/add">Nowy tryb</a><br>
        <a href = "/workoutTemplate/add">Nowy szablon</a><br>
        <br>
        <spring:message code = "app.footer"/>
    </body>
</html>
