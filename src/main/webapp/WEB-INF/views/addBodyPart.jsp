<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add body part</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
    </head>
    <body>

        <%@ include file="/WEB-INF/views/head.jsp" %>

        <H3>Nowa grupa mięśniowa</H3>

            <form:form method="post" modelAttribute="bodyPart">
                Nazwa:<form:input path="name"/>
                <input type="submit" value="Dodaj"/>
            </form:form>
        <spring:message code = "app.footer"/>
    </body>
</html>
