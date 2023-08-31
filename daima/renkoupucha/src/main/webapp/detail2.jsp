<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<div align="center">
<h1 style="color: black;">公文信息列表</h1>
<a href="menu.jsp">返回主页</a>
<form action="Servlet?method=update" method="post" onsubmit="return check()">
</form>
<table class="tb">
<tr>
<td>id</td>
<td>户主</td>
<td>身份证号码</td>
<td>性别</td>
<td>民族</td>
<td>受教育程度</td>
<td>户别</td>
<td>住房类型</td>
</tr>
<c:forEach items="${peoples}" var="item">
<tr>
<td>${item.id}</td>
<td>${item.name}</td>
<td>${item.idc}</td>
<td>${item.sex}</td>
<td>${item.min_zu}</td>
<td>${item.jiao_yu}</td>
<td>${item.hu_bie}</td>
<td>${item.zhu_fang_lei_bie}</td>
</tr>
</c:forEach>

<tr>
<td>id<input type="text" id="id" name="id"/></td>
</tr>
<tr>
<td>户主名<input type="text" id="name" name="name"/></td>
</tr>
<tr>
<td>身份证号<input type="text" id="idc" name="idc" /></td>
</tr>
<tr>
<td>性别<input type="text" id="sex" name="sex" /></td>
</tr>
<tr>
<td>民族<input type="text" id="min_zu" name="min_zu" /></td>
</tr>
<tr>
<td>受教育程度<input type="text" id="jiao_yu" name="jiao_yu" /></td>
</tr>
<tr>
<td><button type="submit" class="b">保存</button></td>
</tr>

</table>
</div>
<script type="text/javascript">
function check() {
var id = document.getElementById("id");
var idc = document.getElementById("idc");
var name = document.getElementById("name");
var jiao_yu = document.getElementById("jiao_yu");
var min_zu = document.getElementById("min_zu");
var sex = document.getElementById("sex");

//非空
if(id.value == '') {
alert('id为空');
id.focus();
return false;
}
if(jiao_yu.value == '') {
alert('受教育程度为空');
jiao_yu.focus();
return false;
}
if(min_zu.value == '') {
alert('民族为空');
min_zu.focus();
return false;
}
if(idc.value == '') {
alert('身份证号码为空');
idc.focus();
return false;
}if(name.value == '') {
alert('户主名为空');
name.focus();
return false;
}
if(sex.value == '') {
alert('性别为空');
sex.focus();
return false;
}


}
</script>
</body>
</html>