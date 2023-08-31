<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>金鼎 </title>
    <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="layui/css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">
</head>
    <div class="login-container">
        <h1 color="blue" >用户登录</h1>

        <div class="connect">
            <p color="blue" >金鼎</p>
        </div>
        <center>
<form action="Servlet?method=login"  method="post"  onsubmit="return check()">
        <div>
            <input type="text" pattern="[a-zA-Z0-9]{6,12}" class="username" id="username" placeholder="用户名"/><br>
            <input type="password" pattern="[a-zA-Z0-9]{6,12}" class="password" id="password" placeholder="密码"  onpaste="return false" /><br>
        
                    </div>
        <a href="index.jsp"><button id="login">登 录</button>  </a><br/>

       

    </div>

</form>
</center>
</body>
</body>
</html>