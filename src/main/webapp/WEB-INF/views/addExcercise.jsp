<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Add excercise</title>
  </head>
  <body>
    <h1><spring:message code = "app.title" /> </h1><BR>


    <H3>Add Excercise</H3>
    <form:form method="post" modelAttribute="excercise">
      Name:<form:input path="name"/>
      <input type="submit" value="Add"/>
    </form:form>








    <h3><spring:message code = "app.footer" /> </h3><BR>
  </body>
</html>
