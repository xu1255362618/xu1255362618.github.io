<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客户信息修改</title>
<script>
</script>
</head>
<body>
<%
         Object message = request.getAttribute("message");
         if(message!=null && !"".equals(message)){
     
    %>
         <script type="text/javascript">
              alert("<%=request.getAttribute("message")%>");
         </script>
    <%} %>
  <table align="center" border="0px" cellpadding="10px" cellspacing="10px">
  <form action="fangchanServlet?method=updatestu"  method="post"  onsubmit="return check()">
  <tr>
  <td><a href="2.jsp">返回主页</a></td>
  </tr>
   <tr>
   <td>姓名：</td>
   <td><input type="text" name="stuname" id="stuname"></td>
   </tr>
   <tr>
   <td>性别</td>
   <td>
   <select name="sex">
   <option value="男">男</option>
   <option value="女">女</option>
    </select>
   </td>
   </tr>
   
   <tr>
   <td>身份证号</td>
   <td><input type="text" name="banji" id="banji"></td>
   </tr>
   <tr>
   <td>手机号</td>
   <td><input type="text" name="ye" id="ye"></td>
   </tr>
   <td>家庭住址</td>
   <td><input type="text" name="user" id="user"></td>
   </tr>
 
    <tr align="center">
    <th colspan="2">
    <input type="submit" value="提交">
    </th>
    </tr>
    </form>
</table>
</body>
</html>