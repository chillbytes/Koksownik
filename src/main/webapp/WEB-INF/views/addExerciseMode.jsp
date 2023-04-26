<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Exercise mode</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>


    <spring:message code = "app.title"/>

    <H3>Nowy tryb</H3>

        <form:form method="post" modelAttribute="exerciseModes">
            Nazwa:<form:input path="name"/><br>
                   <input type="submit" value="Dodaj"/>
        </form:form>

        <spring:message code = "app.footer"/>
    </body>
</html>