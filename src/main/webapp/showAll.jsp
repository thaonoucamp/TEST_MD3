<%--
  Created by IntelliJ IDEA.
  User: thaodangxuan
  Date: 12/07/2021 sau CN
  Time: 09:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>$Title$</title>
</head>
<body>
<div align="center">
    <h1>SHOW ALL PRODUCT</h1>
    <form action="" method="get">
        <h2>
            <a href="/ServletCotroller?action=add">ADD NEW PRODUCT</a>
        </h2>
    </form>
    <form action="" method="get">
        <input type="hidden" name="action" value="find">
        <h3>
            FIND PRODUCT
        </h3>
        <input type="text" name="name">
        <button>FIND</button>
    </form>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>QUANTITY</th>
            <th>COLOR</th>
            <th>DESCRIPTION</th>
            <th>CATEGORY</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td>${product.color}</td>
                <td>${product.description}</td>
                <td>${product.category}</td>
                <td>
                    <a href="/ServletCotroller?action=edit&id=${product.id}">EDIT</a>

                </td>
                <td>
                    <a href="/ServletCotroller?action=delete&id=${product.id}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
