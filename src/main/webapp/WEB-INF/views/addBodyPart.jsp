<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add body part</title>
    </head>
    <body>

        <h1><spring:message code = "app.title" /> </h1><BR>
        <H3>Add BodyPart</H3>

            <form:form method="post" modelAttribute="bodyPart">
                Name:<form:input path="name"/>
                <input type="submit" value="Add"/>
            </form:form>








        <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
