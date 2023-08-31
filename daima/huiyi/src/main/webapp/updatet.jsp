<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改教师信息</title>
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
  <form action="huiyiServlet?method=updatetea"  method="post"  onsubmit="return check()">
  <tr>
  <td><a href="3.jsp">返回菜单</a></td>
  </tr>
   <tr>
    <td>会议ID:（必须存在否则报错）</td>
    <td><input type="text" name="tpid" id="tpid"></td>
   </tr>
   <tr>
   <td>会议名称：</td>
   <td><input type="text" name="teaname" id="teaname"></td>
   </tr>
 
   <tr>
   <td>会议地址：</td>
   <td><input type="text" name="sex" id="sex"></td>
   </tr>
    <tr>
   <td>可用状态：</td>
   <td>
    <select name="txueyuan">
    <option value="可用">可用</option>
    <option value="不可用">不可用</option>
    
    </select>
    </td>
   </tr>
     <tr>
   <td>可用状态：</td>
   <td>
    <select name="zhicheng">
    <option value="占用">占用</option>
    <option value="空闲">空闲</option>
    
    </select>
    </td>
   </tr>
    <tr>
   <td>可用状态：</td>
   <td>
    <select name="renshu">
    <option value="A（大型会议室，容纳50人以上）">A（大型会议室，容纳50人以上）</option>
    <option value="B（中型会议室，容纳20人—40人）">B（中型会议室，容纳20人—40人）</option>
    <option value="C（小型会议室，容纳10人以下）">C（小型会议室，容纳10人以下）</option>
    </select>
    </td>
 
    <tr align="center">
    <th colspan="2">
    <input type="submit" value="提交">
    </th>
    </tr>
    </form>
</table>
</body>
</html>