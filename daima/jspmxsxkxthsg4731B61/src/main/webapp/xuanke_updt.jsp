<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>选课</title>
	
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

new CommDAO().update(request,response,"xuanke",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xuanke"); 

%>
  <form  action="xuanke_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改选课:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>课程编号：</td><td><input name='kechengbianhao' type='text' id='kechengbianhao' value='<%= mmm.get("kechengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>课程名称：</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='<%= mmm.get("kechengmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>工号：</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>教师姓名：</td><td><input name='jiaoshixingming' type='text' id='jiaoshixingming' value='<%= mmm.get("jiaoshixingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>上课地点：</td><td><input name='shangkedidian' type='text' id='shangkedidian' value='<%= mmm.get("shangkedidian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>上课时间：</td><td><input name='shangkeshijian' type='text' id='shangkeshijian' value='<%= mmm.get("shangkeshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>学分：</td><td><input name='xuefen' type='text' id='xuefen' value='<%= mmm.get("xuefen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>课程人数：</td><td><input name='kechengrenshu' type='text' id='kechengrenshu' value='<%= mmm.get("kechengrenshu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>选课人数：</td><td><input name='xuankerenshu' type='text' id='xuankerenshu' value='<%= mmm.get("xuankerenshu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>学生：</td><td><input name='xuesheng' type='text' id='xuesheng' value='<%= mmm.get("xuesheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


