<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 18.03.2023
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <h1>Все рецепты</h1>

    <div class="container">
        <c:forEach var="recipe" items="${requestScope.recipes}">
            <div>
                <a href="<c:out value="${'recipes?id='.concat(recipe.id)}" />"><c:out value="${recipe.title}" /></a>
            </div>
        </c:forEach>
    </div>

    <br>
    <hr>
    <br>
    <div>
         <a href="/new">Добавить новый рецепт</a>
    </div>

</body>
</html>
