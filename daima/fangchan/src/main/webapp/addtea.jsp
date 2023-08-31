<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加销售信息</title>
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
  <form action="fangchanServlet?method=addtea"  method="post"  onsubmit="return check()">
  <tr>
  <td><a href="3.jsp">返回管理主页</a></td>
  </tr>
   <tr>
    <td>销售工号:</td>
    <td><input type="text" name="tpid" id="tpid"></td>
   </tr>
   <tr>
   <td>销售姓名：</td>
   <td><input type="text" name="teaname" id="teaname"></td>
   </tr>
  
   <tr>
   <td>住址：</td>
   <td><input type="text" name="txueyuan" id="txueyuan"></td>
   </tr>
    <tr>
   <td>手机号</td>
   <td><input type="text" name="zhicheng" id="zhicheng"></td>
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