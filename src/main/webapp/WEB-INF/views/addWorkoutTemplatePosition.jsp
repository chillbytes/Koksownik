<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add workout position</title>
        <style><%@include file="/WEB-INF/style/style.css"%></style>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function() {
                // Add an event listener to the exercise dropdown list
                $('select[name="exercise"]').on('change', function() {
                    // Set the value of the hidden input field to the selected exercise ID
                    $('input[name="exerciseId"]').val($(this).val());
                });
            });
        </script>

    </head>
    <body>
        <h1><spring:message code = "app.title" /> </h1><BR>

        <form:form method="post" modelAttribute="workoutPosition">

            Mode:
            <form:select path="exerciseMode"><br>
            <form:option value="0" label="-- wybierz --"/>
            <form:options items="${exerciseModesList}" itemLabel="name" itemValue="id"/><br>
            </form:select><br>

            <!-- Add a hidden input field to capture the exerciseId value -->
            <form:hidden path="exerciseId" value="${workoutPosition.exercise}"/>

            Exercise:
            <form:select path="exercise">
            <form:option value="0" label="-- wybierz --"/>
            <form:options items="${exerciseList}" itemLabel="name" itemValue="id"/>
            </form:select><br>

            Repetitions:
            <form:input path="repetitions" type="number"/><br>

            Weight:
            <form:input path="weight" type="number"/><br>

            <input type="submit" value="Add"/>



        </form:form>

        <h3><spring:message code = "app.footer" /> </h3><BR>
    </body>
</html>
