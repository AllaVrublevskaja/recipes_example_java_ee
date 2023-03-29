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
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <h1>Описание</h1>

    <div class="container">
        <h2>
            Рецепт:
            <c:out value="${requestScope.recipe.title}"/>
        </h2>
        <h3>
            Автор:
            <c:out value="${requestScope.recipe.author}" />
        </h3>

            <textarea name="description"
                      cols="70" rows="20"
                      style="resize: none;" class = "cl">
                <c:out value="${requestScope.recipe.description}"/>
            </textarea>

        <br/>
        <hr>

         <div class = "end row justify__content__center">
             <form method="get" action="/recipes">
                 <input type="submit" value="Назад к рецептам" class ="cl">
             </form>

             <form method="post" action="<c:out value="${'/delete?id='.concat(requestScope.recipe.id)}" />">
                 <input type="submit" value="Удалить рецепт" class ="cl">
             </form>
             <form>
             <input type="button"  onclick="window.location.href =
                     '<c:out value='${"/update?id=".concat(requestScope.recipe.id)}'/>';"
                     class="cl" value="Изменить рецепт">
             </form>
        </div>
    </div>

</body>
</html>
