<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息列表</title>

</head>
<body>
<div align="center">
<h1 style="color: black;">信息列表</h1>
<a href="menu.jsp">返回主页</a>
<table class="tb">
<tr>
<td>id</td>
<td>户主</td>
<td>身份证号码</td>
<td>性别</td>
<td>民族</td>
<td>受教育程度</td>
</tr>
<!-- forEach遍历出adminBeans -->
<c:forEach items="${peoples}" var="item" varStatus="status">
<tr>
<td>${item.id}</td>
<td>${item.name}</td>
<td>${item.idc}</td>
<td>${item.sex}</td>
<td>${item.min_zu}</td>
<td>${item.jiao_yu}</td>

</tr>
</c:forEach>
</table>
</div>
</body>
</html>