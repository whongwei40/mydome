<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>用户首页</title>
</head>
<body>
<center>
    <br>
    <a href="${pageContext.request.contextPath}/tojsp?jspname=addstu">学生添加</a><br>
</center>
    <c:set scope="session" var="age" value="23"/>
    <c:if test="${sessionScope.age >18}">
        <font>我成年了</font>
    </c:if>
</body>
</html>
