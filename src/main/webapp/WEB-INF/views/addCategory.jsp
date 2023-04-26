<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add category</title>
    <style><%@include file="/WEB-INF/style/style.css"%></style>
  </head>
  <body>
    <spring:message code = "app.title"/>

    <H3>Nowa kategoria</H3>

    <form:form method="post" modelAttribute="category">
      Nazwa:<form:input path="name"/><br>
      Mnożnik:<form:input path="multiplier" type="number"/>
      <input type="submit" value="Dodaj"/>
    </form:form>

    <spring:message code = "app.footer"/>
  </body>
</html>
