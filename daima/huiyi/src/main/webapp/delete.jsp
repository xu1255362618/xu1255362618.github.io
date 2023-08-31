<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除会议信息</title>
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
  <form action="huiyiServlet?method=delete"  method="post"  onsubmit="return check()">
  <tr>
    <td>会议ID:</td>
    <td><input type="text" name="huiyiid" id="huiyiid"></td>
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