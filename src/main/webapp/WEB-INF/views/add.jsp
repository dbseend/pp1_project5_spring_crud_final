<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<h1>상품 추가</h1>

<form action="addOk" method="POST">
    <label for="itemName">상품명:</label>
    <input type="text" id="itemName" name="itemName"/>
    <br>
    <label for="itemPrice">가격:</label>
    <input type="text" id="itemPrice" name="itemPrice"/>
    <br>
    <label for="itemQuantity">수량:</label>
    <input type="text" id="itemQuantity" name="itemQuantity"/>
    <br>
    <label for="category">카테고리:</label>
    <input type="text" id="category" name="category"/>
    <br>
    <label for="explanation">설명:</label>
    <textarea id="explanation" name="explanation"></textarea>
    <br>
    <input type="submit" value="작성">
</form>
</body>
</html>
