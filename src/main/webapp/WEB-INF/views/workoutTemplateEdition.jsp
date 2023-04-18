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
    <h1><spring:message code = "app.title" /> </h1><BR>

    <H1>Edycja treningu ${workoutTemplate.name}</H1>
    <H3>${workoutTemplate.description}</H3>

<%--    <P>Ilość ćwiczeń w szablonie: ${workoutExercises.size()    }</P>--%>
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

<%--        <c:if test="${exerciseList.size() gt 0}">--%>
<%--            <table border="1">--%>
<%--                <tr>--%>
<%--                    <td>Id</td>--%>
<%--                    <td>Tryb</td>--%>
<%--                    <td>Nazwa</td>--%>
<%--                    <td>Opis</td>--%>
<%--                    <td>Powt</td>--%>
<%--                    <td>Masa</td>--%>
<%--                    <td></td>--%>
<%--                </tr>--%>
<%--                <c:forEach items="${exerciseList}" var="workoutExercises">--%>
<%--                    <tr>--%>
<%--                        <td>${exerciseList.id}</td>             &lt;%&ndash;id&ndash;%&gt;--%>
<%--                        <td></td>                               &lt;%&ndash;tryb&ndash;%&gt;--%>
<%--                        <td>${exerciseList.name}</td>           &lt;%&ndash;name&ndash;%&gt;--%>
<%--                        <td>${exerciseList.description}</td>    &lt;%&ndash;desc&ndash;%&gt;--%>
<%--                        <td></td>                               &lt;%&ndash;repetitions&ndash;%&gt;--%>
<%--                        <td></td>                               &lt;%&ndash;weight&ndash;%&gt;--%>
<%--                        <td> </td>--%>
<%--                            &lt;%&ndash;                    <td><a href="/book/form/edit/${book.id}">Edytuj</a> <a href="/book/form/confirm/${book.id}">Usuń</a></td>&ndash;%&gt;--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>
<%--            </table>--%>
<%--        </c:if>--%>





    <h3><spring:message code = "app.footer" /> </h3><BR>
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

