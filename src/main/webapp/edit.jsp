<%--
  Created by IntelliJ IDEA.
  User: thaodangxuan
  Date: 12/07/2021 sau CN
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <form action="" method="post">
        <input type="hidden" name="action" value="edit">
        <table border="1" cellpadding="5">

            <tr>
                <input type="hidden" name="id" value="${product.id}">
            </tr>

            <tr>
                <th>NAME</th>
                <td>${product.name}</td>
            </tr>
            <tr>
                <th>PRICE</th>
                <td>${product.price}</td>
            </tr>
            <tr>
                <th>QUANTITY</th>
                <td>${product.quantity}</td>
            </tr>
            <tr>
                <th>COLOR</th>
                <td>${product.color}</td>
            </tr>
            <tr>
                <th>DESCRIPTION</th>
                <td>${product.description}</td>
            </tr>
            <tr>
                <th>CATEGORY</th>
                <td>${product.category}</td>
            </tr>
        </table>

    </form>
</div>
</body>
</html>
