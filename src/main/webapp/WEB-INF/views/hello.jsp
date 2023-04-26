<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <title>Get Strong!</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>

    <body>
        <h1><spring:message code = "app.title" /> </h1>
        <h4><spring:message code = "app.footer" /> </h4>

        <a href = "/bodyPart/add">Nowa grupa mięśniowa</a><br>
        <a href = "/category/add">Nowa kategoria</a><br>
        <a href = "/exercise/add">Nowe ćwiczenie</a><br>
        <a href = "/exerciseMode/add">Nowy tryb</a><br>
        <a href = "/workoutTemplate/add">Nowy szablon</a><br>
    </body>
</html>
