<%--
  Created by IntelliJ IDEA.
  User: 86176
  Date: 2020/5/15
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生添加</title>
</head>
<body>
    <center>
        <form action="${pageContext.request.contextPath}/addstu" method="post">
            用户姓名<input type="text" name="name"><br>
            用户年龄<input type="text" name="age"><br>
            <input type="submit" value="注册">
        </form>
    </center>
</body>
</html>
