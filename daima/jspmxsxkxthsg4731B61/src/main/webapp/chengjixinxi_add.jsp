<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>成绩信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="chengjixinxi_add.jsp?id=<%=id%>&xuehao="+document.form1.xuehao.value;
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







new CommDAO().insert(request,response,"chengjixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="chengjixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加成绩信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>学号：</td><td><%=Info.getselectsl("xuehao","xuesheng","xuehao")%>&nbsp;*<label id='clabelxuehao' /></td></tr>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelxingming' /></td></tr>		<tr><td>学年：</td><td><select name='xuenian' id='xuenian'><%int nnf=0;for(nnf=2018;nnf>=2011;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select></td></tr>		<tr><td>学期：</td><td><select name='xueqi' id='xueqi'><option value="第一学期">第一学期</option><option value="第二学期">第二学期</option></select></td></tr>		<tr><td  width="200">成绩：</td><td><input name='chengji' type='text' id='chengji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelchengji' />必需数字型</td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("xuehao")==null || request.getParameter("xuehao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("xuehao",request.getParameter("xuehao"),"xuesheng"); 
%>
<script language="javascript">
document.form1.xuehao.value="<%=mmm.get("xuehao")%>";document.form1.xingming.value="<%=mmm.get("xingming")%>";//suilafuzhi

</script>
<%
}
%>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var xuehaoobj = document.getElementById("xuehao"); if(xuehaoobj.value==""){document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>请输入学号</font>";return false;}else{document.getElementById("clabelxuehao").innerHTML="  "; } 	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 	var chengjiobj = document.getElementById("chengji"); if(chengjiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(chengjiobj.value)){document.getElementById("clabelchengji").innerHTML=""; }else{document.getElementById("clabelchengji").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


