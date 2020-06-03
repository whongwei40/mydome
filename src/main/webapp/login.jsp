<%--
  Created by IntelliJ IDEA.
  User: 86176
  Date: 2020/5/16
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        span{
            color :red;
            font-size: 12px ;
        }
    </style>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <title>用户登入页面</title>
</head>
<body>

    <center>
        <form method="get" action="${pageContext.request.contextPath}/verification">
            <img alt="图片加载超时" src="${pageContext.request.contextPath}/htmls/cfimg.jpg" height="300" width="400"><br>
            用户名<input type="text" name="name" id="uname" onblur=nameverification() onfocus=oncli()><span id="usernametip"></span><br/>
            密码<input type="text" name="password" id="upassword" onblur=passwrodeText() onfocus=onccc()><span id="passwordtip"></span><br/>
            <input type="submit" id="sub" value="登入" disabled="disabled"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/tojsp?jspname=addstu">用户注册</a>
        </form>
    </center>
    <script type="text/javascript">

            function nameverification() {
                var username = document.getElementById("uname").value;
                var untip =document.getElementById("usernametip");
                username = username.trim();
                if (username === '') {
                    untip.innerHTML="用户名不能为空";
                } else {
                    if (username.length > 14 || username.length < 0) {
                        untip.innerText="用户名必须在0~14长度之间";
                    } else {
                        var regEXP = /^[A-Z0-9a-z]+$/;
                        if (!(regEXP.test(username))) {
                            untip.innerHTML="用户名不能包含特殊字符";
                        }
                    }
                }
            }
            function oncli() {
                var usernamespan=document.getElementById("usernametip");
                var usernameElt =document.getElementById("uname");
                    //如果元素内部的内容不为空，则清空名字
                    if (usernamespan.innerText!="") {
                        usernameElt.value=""
                    }
                    usernamespan.innerText=""

            }
            function onccc() {
              var upoww =document.getElementById("upassword");
              var upwtip =document.getElementById("passwordtip");
              if (upwtip.innerText!=""){upoww.value=""}
              upwtip.innerText="";
            }
            function passwrodeText() {
                var password =document.getElementById("upassword").value;
                var pawtip =document.getElementById("passwordtip");
                var usernamespan =document.getElementById("usernametip");
                if (password==='') {
                    pawtip.innerHTML="密码不能为空";
                }
                if (usernamespan.innerText==''&&pawtip.innerText==''){
                    $(":submit").removeAttr("disabled");
                }
            }
    </script>
</body>
</html>
