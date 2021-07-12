<%--
  Created by IntelliJ IDEA.
  User: thaodangxuan
  Date: 12/07/2021 sau CN
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1>ADD NEW PRODUCT</h1>
    <form method="post">
        <input type="hidden" name="action" value="add" >
        <table border="1" cellpadding="5">

            <tr>
                <th>NAME</th>
                <td>
                    <input type="text" id="name" name="name" size="50">
                </td>
            </tr>
            <tr>
                <th>PRICE</th>
                <td >
                    <input type="text" id="price" name="price" size="50">
                </td>
            </tr>
            <tr>
                <th>QUANTITY</th>
                <td >
                    <input type="text" id="quantity" name="quantity" size="50">
                </td>
            </tr>
            <tr>
                <th>COLOR</th>
                <td >
                    <input type="text" id="color" name="color" size="50">
                </td>
            </tr>
            <tr>
                <th >DESCRIPTION</th>
                <td>
                    <input type="text" id="description" name="description" size="50">
                </td>
            </tr>
            <tr>
                <th >CATEGORY</th>
                <td>
                    <input type="text" id="category" name="category" size="50">
                </td>
            </tr>


            <tr colspn="2" align="center">
                <input type="submit"  value="submit">
            </tr>

        </table>

    </form>
</div>
</body>
</html>
