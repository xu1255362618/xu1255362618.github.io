<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�γ���Ϣ</title>
	
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







new CommDAO().insert(request,response,"kechengxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="kechengxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӿγ���Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>��ʦ��</td><td><%=Info.getselectsl("gonghao","jiaoshi","gonghao")%>&nbsp;*<label id='clabelgonghao' /></td></tr>
		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">�γ̱�ţ�</td><td><input name='kechengbianhao' type='text' id='kechengbianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�γ����ƣ�</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�Ͽεص㣺</td><td><input name='shangkedidian' type='text' id='shangkedidian' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td width="200">�Ͽ�ʱ�䣺</td><td><input name='shangkeshijian' type='text' id='shangkeshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">ѧ�֣�</td><td><input name='xuefen' type='text' id='xuefen' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelxuefen' />����������</td></tr>
		<tr><td  width="200">�γ�������</td><td><input name='kechengrenshu' type='text' id='kechengrenshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkechengrenshu' />����������</td></tr>
		<tr><td  width="200">ѡ��������</td><td><input name='xuankerenshu' type='text' id='xuankerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		
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
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>�����빤��</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 
	var xuefenobj = document.getElementById("xuefen"); if(xuefenobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(xuefenobj.value)){document.getElementById("clabelxuefen").innerHTML=""; }else{document.getElementById("clabelxuefen").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    var kechengrenshuobj = document.getElementById("kechengrenshu"); if(kechengrenshuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(kechengrenshuobj.value)){document.getElementById("clabelkechengrenshu").innerHTML=""; }else{document.getElementById("clabelkechengrenshu").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


