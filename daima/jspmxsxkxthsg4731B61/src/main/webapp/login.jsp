<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>��¼</title>
<link rel="stylesheet" type="text/css" href="images/public.css" />
<link rel="stylesheet" type="text/css" href="images/page.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:610px;
	height:52px;
	z-index:1;
	left: 179px;
	top: 243px;
}
-->
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('����������');
		return false;
	}
}

           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

           
           </script>  
<body>

	<!-- ��¼body -->
	<div class="logDiv">
		<img class="logBanner" src="images/logBanner.png" />
		<div class="logGet">
			<!-- ͷ����ʾ��Ϣ -->
			<div class="logD logDtip">
				<p align="center" class="p1">ѧ��ѡ��ϵͳ</p>
			</div>
			<!-- ����� -->
			
			   <form name="form1" method="post" action="jspmxsxkxthsg4731B6?ac=adminlogin&a=a">
			<div class="lgD">
				<img class="img1" src="images/logName.png" /><input type="text" id="username" name="username" placeholder="�����û���" />
			</div>
			<div class="lgD">
				<img class="img1" src="images/logPwd.png" /><input  placeholder="�����û�����" name="pwd" type="password" id="pwd" />
			</div>
		  <div class="lgD">Ȩ��:&nbsp;&nbsp;<select name="cx" id="cx" style="width:170px; height:40px;">
            <option value="����Ա">����Ա</option>
			<option value="ѧ��">ѧ��</option>
		<option value="��ʦ">��ʦ</option>
		<!--quxanxiaxndexnglxu-->
          </select></div>
		  <div class="lgD">
				<img class="img1" src="images/logPwd.png" /><input type="text" placeholder="��֤��" name="pagerandom" id="pagerandom" style="width:100px; height:40px;" />&nbsp;<a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="80" height="40" border="0" align="absmiddle" > </a>
			</div>
			<div class="logC"> <input name="login" type="hidden" id="login" value="1">
				<input type="submit" name="Submit" value="��½" onClick="return check();" style="width:320px; height:40px;">
			</div>
			 </form>
		</div>
</div>
	<!-- ��¼body  end -->

	<!-- ��¼ҳ��ײ� -->
	<div class="logFoot">
		<p class="p1">��Ȩ���У�ѧ��ѡ��ϵͳ</p>
		
	</div>
	<!-- ��¼ҳ��ײ�end -->
   
</body>
</html>



