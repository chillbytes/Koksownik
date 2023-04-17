<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>WorkoutTemplateEdition</title>
    </head>
    <body>
    <H1>Edycja treningu ${workoutTemplate.name}</H1>
    <H3>${workoutTemplate.description}</H3>

    <P>Ilość ćwiczeń w szablonie: ${workoutExercises.size()    }</P>
    <%--            Excercises:   <form:select path="exercises" multiple="true" items="${exerciseList}" itemValue="id" itemLabel="name"/><br>--%>

<%--    <H2>Edycja szablonu ${workoutTemplate.name}</H2>--%>

        <%--
            tabelka zawierająca ćwiczenia
            tabela zawiera:
            nagłówek z nazwą szablonu treningu
            Przyciski:
            "usuń" --> usuwa szablon
            "zapisz" --> zapiszuje szablon, przekierowuje do widoku szablonów
            "dodaj ćwiczenie" --> przekierowuje do formularza dodania ćwiczenia

            Kolumny:
            "ID",
            "Nazwa ćwiczenia",
            "Ilość powtórzeń",
            "Tryb ("Wprmout, workout, Failure, DropSet"),
            "Waga"
            exercises ???

        --%>

        <c:if test="${exerciseList.size() gt 0}">
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>Tryb</td>
                    <td>Nazwa</td>
                    <td>Opis</td>
                    <td>Powt</td>
                    <td>Masa</td>
                    <td></td>
                </tr>
                <c:forEach items="${exerciseList}" var="workoutExercises">
                    <tr>
                        <td>${exerciseList.id}</td>             <%--id--%>
                        <td></td>                               <%--tryb--%>
                        <td>${exerciseList.name}</td>           <%--name--%>
                        <td>${exerciseList.description}</td>    <%--desc--%>
                        <td></td>                               <%--repetitions--%>
                        <td></td>                               <%--weight--%>
                        <td> </td>
                            <%--                    <td><a href="/book/form/edit/${book.id}">Edytuj</a> <a href="/book/form/confirm/${book.id}">Usuń</a></td>--%>
                    </tr>
                </c:forEach>
            </table>
        </c:if>






    </body>
</html>



<%--@Id--%>
<%--@GeneratedValue(strategy = GenerationType.IDENTITY)--%>
<%--private Long id;--%>

<%--@NotBlank--%>
<%--private String name;--%>

<%--private String description;--%>

<%--@NotNull--%>
<%--@ManyToOne--%>
<%--private BodyPart bodyPart;--%>

<%--@NotNull--%>
<%--@ManyToOne--%>
<%--private Category category;--%>

