<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Add excercise</title>
      <style><%@include file="/WEB-INF/style/style.css"%></style>
  </head>
  <body>

    <spring:message code = "app.title"/>

    <H3>Nowe ćwiczenie</H3>

    <form:form method="post" modelAttribute="exercise">

      Nazwa:         <form:input path="name"/><br>

      Opis:         <form:input path="description"/><br>

      Kategoria     <form:select path="category"><br>
                    <form:option value="0" label="-- wybierz --"/>
                    <form:options items="${categoryList}" itemLabel="name" itemValue="id"/>
                    </form:select><br>

      Grupa mięśniowa: <form:select path="bodyPart"><br>
                       <form:option value="0" label="-- wybierz --"/>
                       <form:options items="${bodyPartList}" itemLabel="name" itemValue="id"/>
                       </form:select><br>
                       <input type="submit" value="Dodaj"/>
    </form:form>

    <spring:message code = "app.footer"/>

  </body>
</html>
