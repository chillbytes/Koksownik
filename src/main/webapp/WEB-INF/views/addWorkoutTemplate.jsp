<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>addWorkoutTemplate</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>
        <h1><spring:message code = "app.title" /> </h1>
        <h4><spring:message code = "app.footer" /> </h4>

        <H3>Nowy szablon</H3>

        <form:form method="post" modelAttribute="workoutTemplate">
            Nazwa:        <form:input path="name"/><br>
            Opis:         <form:input path="description"/><br>
            <input type="submit" value="Dodaj"/>

        </form:form>
    </body>
</html>
