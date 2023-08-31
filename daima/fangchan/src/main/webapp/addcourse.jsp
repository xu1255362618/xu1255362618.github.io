<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加学生信息</title>
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
  <form action="fangchanServlet?method=addcou"  method="post"  onsubmit="return check()">
  <tr>
  <td><a href="1.jsp">返回菜单</a></td>
  </tr>
   <tr>
    <td>房产编号：</td>
    <td><input type="text" name="cpid" id="cpid"></td>
   </tr>
   <tr>
   <td>户型：</td>
   <td><input type="text" name="cname" id="cname"></td>
   </tr>
 
   <tr>
   <td>房产地址：</td>
   <td><input type="text" name="num" id="num"></td>
   </tr>
   <tr>
   <tr>
   <td>建造年份：</td>
   <td><input type="text" name="year" id="year"></td>
   </tr>
   <tr>
   <td>建造面积：</td>
   <td><input type="text" name="area" id="area"></td>
   </tr>
   <tr>
   <td>销售报价：</td>
   <td><input type="text" name="sales" id="sales"></td>
   </tr>
   <tr>
   <td>销售状态：</td>
   <td><input type="text" name="status" id="status"></td>
   </tr>
   <tr>
   
    
    <tr align="center">
    <th colspan="2">
    <input type="submit" value="提交">
    </th>
    </tr>
    </form>
</table>
</body>
</html>