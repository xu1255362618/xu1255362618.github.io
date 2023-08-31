<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Javabean.bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>论文查询</title>
<script>
</script>
</head>


  <table align="center" border="0px" cellpadding="10px" cellspacing="10px">
  <form action="chezhanServlet?method=chaxun"  method="post"  onsubmit="return check()">
 
   <tr>
    <td> 论文号:</td>
    <td><input type="text" name="spid" id="spid"></td>
 
   </tr>
 
    <tr align="center">
    <th colspan="2"> 
    <input type="submit" value="提交">
    </th>
    </tr>
    </form>
    
</table>
 <table align="center" border="0px" cellpadding="10px" cellspacing="10px">
  <form action="chezhanServlet?method=chaxunzm"  method="post"  onsubmit="return check()">
 
   <tr>
    <td> 关键词:</td>
    <td><input type="text" name="zhanming" id="zhanming"></td>
  
   </tr>
 
    <tr align="center">
    <th colspan="2">
    <input type="submit" value="提交">
    </th>
    </tr>
    </form>
    

</table>
<table align="center" border="0px" cellpadding="10px" cellspacing="10px">
  <form action="chezhanServlet?method=chaxunqishi"  method="post"  onsubmit="return check()">
 
   <tr>
    <td>文章名:</td>
    <td><input type="text" name="qidian" id="qidian"></td>
  
   </tr>
   <tr>
    <td>作者:</td>
    <td><input type="text" name="zhongdian" id="zhongdian"></td>
  
   </tr>
 
    <tr align="center">
    <th colspan="2">
    <input type="submit" value="提交">
    </th>
    </tr>
    </form>
    

</table>
<table border="1">
<tr>文章:</tr>
<tr>
<c:forEach items="${list}" var="a">
	<td>${a.zhanming} </td>
	
</c:forEach>
</table>
</tr>
<table border="1">
<tr>作者:</tr>
<tr><c:forEach items="${list1}" var="a">
	<td>${a.xianluhao} 号线</td>
</c:forEach>
</tr>
</table>
</body>
</html>