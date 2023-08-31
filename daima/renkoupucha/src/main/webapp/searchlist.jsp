<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人口登记信息查询</title>

</head>
<body>
<div align="center">
<h1 style="color: black;">人口登记信息查询</h1>
<a href="menu.jsp">返回主页</a>
<form action="Servlet?method=search" method="post" onsubmit="return check()">
<div class="a">
户主<input type="text" id="name" name="name"/>
</div>
<div class="a">
性别<input type="text" id="sex" name="sex" />
</div>
<div class="a">
民族<input type="text" id="min_zu" name="min_zu" />
</div>
<div class="a">
受教育程度<input type="text" id="jiao_yu" name="jiao_yu" />
</div>

<div class="a">
<button type="submit" class="b">查&nbsp;&nbsp;&nbsp;询</button>
</div>
</form>
</div>
<script type="text/javascript">
function check() {
var name = document.getElementById("name");;
var sex = document.getElementById("sex");
var min_zu = document.getElementById("min_zu");
var jiao_yu = document.getElementById("jiao_yu");

if(jiao_yu.value == '') {
alert('受教育程度为空');
jiao_yu.focus();
return false;
}
}if(name.value == '') {
alert('户主名为空');
name.focus();
return false;
}
if(min_zu.value == '') {
alert('民族为空');
min_zu.focus();
return false;
}
if(sex.value == '') {
alert('民族为空');
sex.focus();
return false;
}

}
</script>
</body>
</html>