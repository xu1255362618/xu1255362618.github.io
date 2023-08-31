<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
</head>
<body>
  <table align="center" border="0px" cellpadding="10px" cellspacing="10px">
  <form action="fangchanServlet?method=login"  method="post"  onsubmit="return check()">
  <tr>
  <td>用户名：</td>
  <td><input type="text" name="username" id="username"></td>
  </tr>
  <tr>
  <td>密码：</td>
  <td><input type="password" name="password" id="password"></td>
  </tr>
    <tr align="center">
    <th colspan="2">
    <input type="submit" value="登录">
   <a href="addstu.jsp">注册</a>
  
    </th>
    </tr>
  </form>
  </table>
</body>
</html>