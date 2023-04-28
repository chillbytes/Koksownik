<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <html>
    <head>
        <title>Workout Session Edition</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>

<%--        <style>--%>
<%--            form {--%>
<%--                margin: 0px auto;--%>
<%--                max-width: 1000px;--%>
<%--                padding: 20px;--%>
<%--                background-color: #fff;--%>
<%--                border-radius: 0px;--%>
<%--                box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);--%>
<%--            }--%>
<%--        </style>--%>
    </head>
    <body>
        <spring:message code = "app.title"/>

        <h3>Sesja: ${workoutSession.name} </h3>



        <table>
        <form method="POST" action="your-submit-action">
<%--            <table>--%>
                <thead>
                    <tr>
                        <th>Exercise Name</th>
                        <th>Exercise Description</th>
                        <th>Category</th>
                        <th>Repetitions</th>
                        <th>Weight</th>
                        <th>Exercise Mode</th>
                        <th>Completed</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="wsp" items="${workoutSessionPositions}">
                        <tr>
                            <td>${wsp.exerciseName}</td>
                            <td>${wsp.exerciseDescription}</td>
                            <td>${wsp.category}</td>
                            <td class="text-right"><input type="number" name="repetitions" value="${wsp.repetitions}"></td>
                            <td class="text-right"><input type="number" name="weight" value="${wsp.weight}"></td>
                            <td>${wsp.exerciseMode}</td>
                            <td>
                                <label>
                                    <input type="checkbox" name="competed" value="true" ${wsp.completed ? "checked" : ""}>
                                    Zrobione
                                </label>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
<%--            </table>--%>
            <button type="submit">Zapisz</button><BR><BR>
        </form>
        </table>

        <%--        <table>--%>
<%--            <thead>--%>
<%--                <tr>--%>
<%--                    <th>Nazwa ćwiczenia</th>--%>
<%--                    <th>Opis ćwiczenia</th>--%>
<%--                    <th>Kategoria</th>--%>
<%--                    <th>Powtórzenia</th>--%>
<%--                    <th>Waga</th>--%>
<%--                    <th>Tryb ćwiczenia</th>--%>
<%--                    <th>Wykonano</th>--%>
<%--                </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach items="${workoutSessionPositions}" var="wsp">--%>
<%--                <tr>--%>
<%--&lt;%&ndash;                    <td>${wsp.exerciseName}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${wsp.exerciseDescription}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${wsp.category}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${wsp.repetitions}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${wsp.weight}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${wsp.exerciseMode}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <td>${wsp.completed} </td>&ndash;%&gt;--%>
<%--                    <form action="updateExercise" method="post">--%>
<%--                        <input type="hidden" name="exerciseId" value="${wsp.id}">--%>
<%--                        <td>${wsp.exerciseName}</td>--%>
<%--                        <td>${wsp.exerciseDescription}</td>--%>
<%--                        <td>${wsp.category}</td>--%>
<%--                        <td><input type="number" name="repetitions" value="${wsp.repetitions}"></td>--%>
<%--                        <td><input type="number" name="weight" value="${wsp.weight}"></td>--%>
<%--                        <td>${wsp.exerciseMode}</td>--%>
<%--                        <td><input type="checkbox" name="completed" value="false" ${wsp.completed ? 'checked' : ''}></td>--%>
<%--                        <td><button type="submit">Update</button></td>--%>
<%--                    </form>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>




        <spring:message code = "app.footer"/>
    </body>
</html>
