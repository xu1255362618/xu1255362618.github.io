<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�γ���Ϣ</title>
	
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

new CommDAO().update(request,response,"kechengxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"kechengxinxi"); 

%>
  <form  action="kechengxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ŀγ���Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>���ţ�</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�γ̱�ţ�</td><td><input name='kechengbianhao' type='text' id='kechengbianhao' value='<%= mmm.get("kechengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�γ����ƣ�</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' size='50' value='<%=mmm.get("kechengmingcheng")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�Ͽεص㣺</td><td><input name='shangkedidian' type='text' id='shangkedidian' size='50' value='<%=mmm.get("shangkedidian")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�Ͽ�ʱ�䣺</td><td><input name='shangkeshijian' type='text' id='shangkeshijian' value='<%= mmm.get("shangkeshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>ѧ�֣�</td><td><input name='xuefen' type='text' id='xuefen' value='<%= mmm.get("xuefen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�γ�������</td><td><input name='kechengrenshu' type='text' id='kechengrenshu' value='<%= mmm.get("kechengrenshu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѡ��������</td><td><input name='xuankerenshu' type='text' id='xuankerenshu' value='<%= mmm.get("xuankerenshu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


