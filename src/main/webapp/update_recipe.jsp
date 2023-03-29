<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 18.03.2023
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>

<h1>Изменить рецепт</h1>

<form method="post" action="<c:out value="${'/update?id='.concat(requestScope.recipe.id)}" />">
    <div>
        <label for="author" >Автор рецепта</label>
        <input type="text" id="author" name="author" class = "lab1"  value="${requestScope.recipe.author}">
    </div>
    <br>
    <div>
        <label  for="title">Название рецепта</label>
        <input type="text" id="title" name="title" class = "lab2" value="${requestScope.recipe.title}">
    </div>
    <div>
        <h1>Описание</h1>
        <textarea name="description" id="id" cols="70" rows="20" style="resize: none;">
            <c:out value="${requestScope.recipe.description}"/>
        </textarea>
    </div>

    <br>
    <hr>

    <input type="submit" value="Изменить рецепт" class = "cl">
    <input type="button"  onclick="window.location.href =
        '<c:out value='${"/recipes?id=".concat(requestScope.recipe.id)}'/>';"
        class="cl" value="Назад к рецепту">
</form>

</body>
</html>
