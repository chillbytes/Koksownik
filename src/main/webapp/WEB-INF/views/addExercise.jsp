<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Add excercise</title>
  </head>
  <body>
    <h1><spring:message code = "app.title" /> </h1><BR>


    <H3>Add Excercise</H3>
<%--    <form:form method="post" modelAttribute="exercise">--%>
<%--      Name:<form:input path="name"/><br>--%>
<%--      <input type="submit" value="Add"/>--%>
<%--    </form:form>--%>

    <form:form method="post" modelAttribute="exercise">

      Name:         <form:input path="name"/><br>

      Description:  <form:input path="description"/><br>

      Category:     <form:select path="category"><br>
                    <form:option value="0" label="-- wybierz --"/>
                    <form:options items="${categoryList}" itemLabel="name" itemValue="id"/>
                    </form:select><br>

      Body part:    <form:select path="bodyPart"><br>
                    <form:option value="0" label="-- wybierz --"/>
                    <form:options items="${bodyPartList}" itemLabel="name" itemValue="id"/>
                    </form:select><br>

                    <input type="submit" value="Add"/>

    </form:form>


<%--//bodyPartList--%>
<%--//categoryList    --%>




    <h3><spring:message code = "app.footer" /> </h3><BR>
  </body>
</html>
