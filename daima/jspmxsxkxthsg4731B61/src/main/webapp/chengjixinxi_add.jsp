<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�ɼ���Ϣ</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
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
  ��ӳɼ���Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>ѧ�ţ�</td><td><%=Info.getselectsl("xuehao","xuesheng","xuehao")%>&nbsp;*<label id='clabelxuehao' /></td></tr>		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelxingming' /></td></tr>		<tr><td>ѧ�꣺</td><td><select name='xuenian' id='xuenian'><%int nnf=0;for(nnf=2018;nnf>=2011;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select></td></tr>		<tr><td>ѧ�ڣ�</td><td><select name='xueqi' id='xueqi'><option value="��һѧ��">��һѧ��</option><option value="�ڶ�ѧ��">�ڶ�ѧ��</option></select></td></tr>		<tr><td  width="200">�ɼ���</td><td><input name='chengji' type='text' id='chengji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelchengji' />����������</td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var xuehaoobj = document.getElementById("xuehao"); if(xuehaoobj.value==""){document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>������ѧ��</font>";return false;}else{document.getElementById("clabelxuehao").innerHTML="  "; } 	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 	var chengjiobj = document.getElementById("chengji"); if(chengjiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(chengjiobj.value)){document.getElementById("clabelchengji").innerHTML=""; }else{document.getElementById("clabelchengji").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


