<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 18.03.2023
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create recipe</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <h1>Новый рецепт</h1>

    <form method="post" action="/recipes">
        <div>
            <label for="author" >Автор рецепта</label>
            <input type="text" id="author" name="author" class = "lab1">
        </div>
        <br>
        <div>
            <label  for="title">Название рецепта</label>
            <input type="text" id="title" name="title" class = "lab2">
        </div>
        <div>
        <h1>Описание</h1>
            <textarea name="description" cols="70" rows="20" style="resize: none;"></textarea>
        </div>

        <br>
        <hr>

        <div class = "cl">
            <input type="submit" value="Создать рецепт">
        </div>
    </form>

</body>
</html>
