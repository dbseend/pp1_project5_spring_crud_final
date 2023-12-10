<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script>
        function delete_ok(id) {
            var confirm = window.confirm("정말로 삭제하겠습니까?");
            if (confirm) location.href = '/products/delete/' + id;
        }
    </script>
</head>
<body>
<h1>도서 목록 게시판</h1>


    <c:forEach items="${list}" var="u">
            ${u.itemId}
            ${u.itemName}
            ${u.itemPrice}
            ${u.itemQuantity}
            ${u.itemTime}
            ${u.category}
            ${u.explanation}
            ${u.photo}
            ${u.regDate}
            <a href="/products/update/${u.itemId}">Edit</a>
            <a href= "javascript:delete_ok('${u.itemId}')">Delete</a>
            <a href="/products/${u.itemId}">View</a><br/>
    </c:forEach>
</table>
<br/> <a href="/products/add">Add New Post</a>
</body>
</html>
