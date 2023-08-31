<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>成绩信息</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"chengjixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"chengjixinxi"); 

%>
  <form  action="chengjixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改成绩信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>学年：</td><td><select name='xuenian' id='xuenian'><%int nnf=0;for(nnf=2018;nnf>=2011;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select></td></tr><script language="javascript">document.form1.xuenian.value='<%=mmm.get("xuenian")%>';</script>     <tr><td>学期：</td><td><select name='xueqi' id='xueqi'><option value="第一学期">第一学期</option><option value="第二学期">第二学期</option></select></td></tr><script language="javascript">document.form1.xueqi.value='<%=mmm.get("xueqi")%>';</script>     <tr><td>成绩：</td><td><input name='chengji' type='text' id='chengji' value='<%= mmm.get("chengji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


