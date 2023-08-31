<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>学生会信息管理系统登录 </title>
    <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="layui/css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">
</head>
    <div class="login-container">
        <h1 color="blue" >用户登录</h1>

        <div class="connect">
            <p color="blue" >学生会信息管理系统</p>
        </div>

        <div>
            <input type="text" class="username" id="account" placeholder="用户名"/><br>
            <input type="password" class="password" id="pwd" placeholder="密码"  onpaste="return false" /><br>
        
                    </div>
        <a href="index.jsp"><button id="login">登 录</button>  </a><br/>

        <a href="insert.jsp">
            <button type="button" class="register-tis">还没有账号？</button>
        </a>

    </div>



</body>
</body>
</html>