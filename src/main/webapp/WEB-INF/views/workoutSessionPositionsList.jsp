<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Workout session positions</title>
      <style><%@include file="/WEB-INF/style/style.css"%></style>
  </head>
  <body>

    <%--model.addAttribute("workoutSession", workoutSession ;--%>
    <%--model.addAttribute("workoutSessionPositions", workoutSessionPositions );--%>

    <spring:message code = "app.title"/>


    <h2>Sesja: ${workoutSession.name}</h2>


    <table  >
        <tr>

          <th>Ćwiczenie</th>
          <th>Opis</th>
          <th>Kategoria</th>
          <th>Powtórzenia</th>
          <th>Ciężar</th>
          <th>Tryb</th>

        </tr>
      <c:forEach var="wsp" items="${workoutSessionPositions}" >
        <tr>

          <td>${wsp.exerciseName}</td>
          <td>${wsp.exerciseDescription}</td>
          <td>${wsp.category}</td>
          <td>${wsp.repetitions}</td>
          <td>${wsp.weight}</td>
          <td>${wsp.exerciseMode}</td>

        </tr>
      </c:forEach>
    </table>



    <spring:message code = "app.footer"/>

  </body>
</html>
