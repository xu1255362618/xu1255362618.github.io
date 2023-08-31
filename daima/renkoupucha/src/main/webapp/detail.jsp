<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人口登记信息删除</title>
<style>
.a{
margin-top: 20px;
}
.b{
font-size: 20px;
width: 160px;
color: white;
background-color: greenyellow;
}
.tb, td {
border: 1px solid black;
font-size: 22px;
}
</style>
</head>
<body>
<div align="center">
<h1 style="color: black;">人口登记信息删除</h1>
<a href="menu.jsp">返回主页</a>
<table class="tb">
<tr>
<td>户主姓名</td>
<td>${people.name}</td>
</tr>
<tr>
<td>身份证号码</td>
<td>${people.idc}</td>
</tr>
<tr>
<td>性别</td>
<td>${people.sex}</td>
</tr>
<tr>
<td>民族</td>
<td>${people.min_zu}</td>
</tr>
<tr>
<td>受教育程度</td>
<td>${people.jiao_yu}</td>
</tr>
</table>
<div class="a">
<a onclick="return check()" href="Servlet?method=del&id=${people.id}">删   除</a>
</div>
</div>
<script type="text/javascript">
function check() {
if (confirm("真的要删除吗？")){
return true;
}else{
return false;
}
}
</script>
</body>
</html>