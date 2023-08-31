<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人口登记信息删除</title>

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
<h1 style="color: red;">人口登记信息删除</h1>
<a href="menu.jsp">返回主页</a>
<form action="Servlet?method=getbyname" method="post" onsubmit="return check()">
<div class="a">
户主性名<input type="text" id="name" name="name"/>
</div>
<div class="a">
<button type="submit" class="b">查   找</button>
</div>
</form>
</div>
<script type="text/javascript">
function check() {
var name = document.getElementById("name");;

//非空
if(name.value == '') {
alert('户主名为空');
name.focus();
return false;
}
}
</script>
</body>
</html>
