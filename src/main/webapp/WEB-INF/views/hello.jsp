<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <title>Title</title>
    </head>

    <body>
        <h1><spring:message code = "app.title" /> </h1><BR>
<%--        <p><spring:message code="app.hello" arguments ="Wojtek"/></p><BR>--%>
<%--        <P>Hello Springbook - widok!</P>--%>
<%--        <P>Hello Springbook - widok!</P>--%>
<%--        <P>Hello Springbook - widok!</P>--%>

<%--
        add body part:      /bodyPart/add
        add category:       /category/add
        add exercise:       /exercise/add
        add waorkoutTemp:   /workoutTemplate/add

--%>


        <a href = "/bodyPart/add">Add body part</a><br>
        <a href = "/category/add">Add excercise category</a><br>
        <a href = "/exercise/add">Add excersise</a><br>
        <a href = "/workoutTemplate/add">Add workout template</a><br>

        <h3><spring:message code = "app.footer" /> </h3><BR>


    </body>

</html>
