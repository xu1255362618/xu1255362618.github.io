<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ɼ���Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"chengjixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"chengjixinxi"); 

%>
  <form  action="chengjixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ĳɼ���Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>ѧ�ţ�</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ�꣺</td><td><select name='xuenian' id='xuenian'><%int nnf=0;for(nnf=2018;nnf>=2011;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select></td></tr><script language="javascript">document.form1.xuenian.value='<%=mmm.get("xuenian")%>';</script>     <tr><td>ѧ�ڣ�</td><td><select name='xueqi' id='xueqi'><option value="��һѧ��">��һѧ��</option><option value="�ڶ�ѧ��">�ڶ�ѧ��</option></select></td></tr><script language="javascript">document.form1.xueqi.value='<%=mmm.get("xueqi")%>';</script>     <tr><td>�ɼ���</td><td><input name='chengji' type='text' id='chengji' value='<%= mmm.get("chengji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


