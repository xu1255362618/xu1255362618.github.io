<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人口信息登记</title>

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
<h1 style="color: black;">人口信息登记</h1>
<a href="menu.jsp">返回主页</a>
<form name="form1" action="Servlet?method=add" method="post" onsubmit="return check()">
<div class="a">
户 别
集体户<input type="radio" id="hu_bie" name="hu_bie" value="collectivehousehold" >
家庭户<input type="radio" id="hu_bie" name="hu_bie" value="households" >
</div>
<div class="a">
住房类型
家庭住宅<input type="radio" id="zhu_fang_lei_bie" name="zhu_fang_lei_bie" value="familyhome" >
集体住所<input type="radio" id="zhu_fang_lei_bie" name="zhu_fang_lei_bie" value="collectivehouseing" >
工作地住所<input type="radio" id="zhu_fang_lei_bie" name="zhu_fang_lei_bie" value="workplacehousing" >
其他住宅<input type="radio" id="zhu_fang_lei_bie" name="zhu_fang_lei_bie" value="otherresidential" >
无住宅<input type="radio" id="zhu_fang_lei_bie" name="zhu_fang_lei_bie" value="noresidence" >
</div>
<div class="a">
现住房面积<input type="text" id="S" name="S" />
</div>
<div class="a">
现住房房间数<input type="text" id="N" name="N" />
</div>
<div class="a">
户主姓名<input type="text" id="name" name="name" />
</div>
<div class="a">
身份证号码<input type="text" id="idc" name="idc" />
</div>
<div class="a">
性别
男<input type="radio" name="sex" value="nan" >
女<input type="radio" name="sex" value="nv" >
</div>
<div class="a">
民族<input type="text" id="min_zu" name="min_zu" />
</div>
<div class="a">
受教育程度
研究生<input type="radio" id="jiao_yu" name="jiao_yu" value="postgraduate" >
大学本科<input type="radio" id="jiao_yu" name="jiao_yu" value="undergraduate" >
大学专科<input type="radio" id="jiao_yu" name="jiao_yu" value="college" >
高中<input type="radio" id="jiao_yu" name="jiao_yu" value="highschool" >
初中<input type="radio" id="jiao_yu" name="jiao_yu" value="juniorhighschool" >
小学<input type="radio" id="jiao_yu" name="jiao_yu" value="primaryschool" >
未上过学<input type="radio" id="jiao_yu" name="jiao_yu" value="uneducated" >
</div>
<div class="a">
<button type="submit" class="b">保   存</button>
</div>
</form>
</div>
<script type="text/javascript">
function check() {
var S = document.form1.S.value;
var N = document.form1.N.value;
var idc = document.form1.idc.value;
var name = document.form1.name.value;
var jiao_yu = document.form1.jiao_yu.value;
var min_zu = document.form1.min_zu.value;;
var idc = document.form1.idc.value;
//非空
if(jiao_yu == '') {
alert('受教育程度为空');
jiao_yu.focus();
return false;
}
if(min_zu == '') {
alert('民族为空');
min_zu.focus();
return false;
}
if(S == '') {
alert('住房面积为空');
S.focus();
return false;
}
if(N == '') {
alert('房间数为空');
N.focus();
return false;
}if(idc == '') {
alert('身份证号码为空');
idc.focus();
return false;
}if(name == '') {
alert('户主名为空');
name.focus();
return false;
}if(idc.length!=18)
{
alert('身份证号码位数错误');
idc.focus();
return false;
}if(check_word(idc))
{
alert('身份证号码包含字母');
idc.focus();
return false;
}
if ((document.theForm.S.value.indexOf("-") == 0)||!(document.theForm.S.value.indexOf(".") == -1)){
alert("住房面积不能为小数或负数");
document.theForm.S.focus();
return false;
}
if ((document.theForm.N.value.indexOf("-") == 0)||!(document.theForm.N.value.indexOf(".") == -1)){
alert("房间数不能为小数或负数");
document.theForm.N.focus();
return false;
}
}
function check_word(str)
{ var arr = ["a", "b", "c", "d", "e", "f", "g", "h","i","j", "k", "l", "m", "n", "o", "p", "q","r", "s", "t", "u", "v", "w", "x", "y","z","A", "B", "C", "D", "E", "F", "G", "H","I","J", "K", "L", "M", "N", "O", "P", "Q","R","S", "T", "U", "V", "W", "X", "Y", "Z"];
for (var i = 0; i < arr.length; i++)
{
for (var j = 0; j < str.length; j++)
{
if (arr[i] == str.charAt(j))
{
if(arr[i]=="X"&&j==18)
{
return false;
}
return true;
}
}
}
return false;
}
</script>
</body>
</html>