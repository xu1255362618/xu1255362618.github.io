<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>课程信息</title>
	
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
	document.location.href="kechengxinxi_add.jsp?id=<%=id%>&gonghao="+document.form1.gonghao.value;
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







new CommDAO().insert(request,response,"kechengxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="kechengxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加课程信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>教师：</td><td><%=Info.getselectsl("gonghao","jiaoshi","gonghao")%>&nbsp;*<label id='clabelgonghao' /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">课程编号：</td><td><input name='kechengbianhao' type='text' id='kechengbianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">课程名称：</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">上课地点：</td><td><input name='shangkedidian' type='text' id='shangkedidian' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td width="200">上课时间：</td><td><input name='shangkeshijian' type='text' id='shangkeshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">学分：</td><td><input name='xuefen' type='text' id='xuefen' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelxuefen' />必需数字型</td></tr>
		<tr><td  width="200">课程人数：</td><td><input name='kechengrenshu' type='text' id='kechengrenshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkechengrenshu' />必需数字型</td></tr>
		<tr><td  width="200">选课人数：</td><td><input name='xuankerenshu' type='text' id='xuankerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		
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
if(request.getParameter("gonghao")==null || request.getParameter("gonghao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("gonghao",request.getParameter("gonghao"),"jiaoshi"); 
%>
<script language="javascript">
document.form1.gonghao.value="<%=mmm.get("gonghao")%>";
document.form1.xingming.value="<%=mmm.get("xingming")%>";
//suilafuzhi

</script>
<%
}
%>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 
	var xuefenobj = document.getElementById("xuefen"); if(xuefenobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(xuefenobj.value)){document.getElementById("clabelxuefen").innerHTML=""; }else{document.getElementById("clabelxuefen").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var kechengrenshuobj = document.getElementById("kechengrenshu"); if(kechengrenshuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(kechengrenshuobj.value)){document.getElementById("clabelkechengrenshu").innerHTML=""; }else{document.getElementById("clabelkechengrenshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


