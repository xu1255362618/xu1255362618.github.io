<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>选课</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"kechengxinxi");
 String kechengbianhao="";
  	String kechengmingcheng="";
  	String gonghao="";
  	String jiaoshixingming="";
  	String shangkedidian="";
  	String shangkeshijian="";
  	String xuefen="";
  	String kechengrenshu="";
  	String xuankerenshu="";
  	
 kechengbianhao=(String)mlbdq.get("kechengbianhao");
  	kechengmingcheng=(String)mlbdq.get("kechengmingcheng");
  	gonghao=(String)mlbdq.get("gonghao");
  	jiaoshixingming=(String)mlbdq.get("xingming");
  	shangkedidian=(String)mlbdq.get("shangkedidian");
  	shangkeshijian=(String)mlbdq.get("shangkeshijian");
  	xuefen=(String)mlbdq.get("xuefen");
  	kechengrenshu=(String)mlbdq.get("kechengrenshu");
  	xuankerenshu=(String)mlbdq.get("xuankerenshu");
  	 
 

 HashMap mssdq = new CommDAO().getmaps("xuehao",(String)request.getSession().getAttribute("username"),"xuesheng");
 String xingming="";
  	
 xingming=(String)mssdq.get("xingming");
  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="xuanke_add.jsp?id=<%=id%>";
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


int xiancii=0;						
    for(HashMap map:new CommDAO().select("select id from xuanke where 1=1  and kechengbianhao='"+request.getParameter("kechengbianhao")+"' and xuesheng='"+request.getParameter("xuesheng")+"'")){
		xiancii++;
	}
	if(xiancii>=1)
	{
		out.print("<script>javascript:alert('请勿重复选课!');history.back();</script>");
	}
	else
	{
	
	
	String sql="update kechengxinxi set xuankerenshu=xuankerenshu+1   where kechengbianhao='"+request.getParameter("kechengbianhao")+"'";
        
          new CommDAO().commOper(sql);

	
		new CommDAO().insert(request,response,"xuanke",ext,true,false,""); 
	}
}
%>

  <body >
 <form  action="xuanke_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加选课:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">课程编号：</td><td><input name='kechengbianhao' type='text' id='kechengbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.kechengbianhao.value='<%=kechengbianhao%>';document.form1.kechengbianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">课程名称：</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.kechengmingcheng.value='<%=kechengmingcheng%>';document.form1.kechengmingcheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.gonghao.value='<%=gonghao%>';document.form1.gonghao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">教师姓名：</td><td><input name='jiaoshixingming' type='text' id='jiaoshixingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiaoshixingming.value='<%=jiaoshixingming%>';document.form1.jiaoshixingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">上课地点：</td><td><input name='shangkedidian' type='text' id='shangkedidian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shangkedidian.value='<%=shangkedidian%>';document.form1.shangkedidian.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">上课时间：</td><td><input name='shangkeshijian' type='text' id='shangkeshijian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shangkeshijian.value='<%=shangkeshijian%>';document.form1.shangkeshijian.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">学分：</td><td><input name='xuefen' type='text' id='xuefen' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xuefen.value='<%=xuefen%>';document.form1.xuefen.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">课程人数：</td><td><input name='kechengrenshu' type='text' id='kechengrenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.kechengrenshu.value='<%=kechengrenshu%>';document.form1.kechengrenshu.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">选课人数：</td><td><input name='xuankerenshu' type='text' id='xuankerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xuankerenshu.value='<%=xuankerenshu%>';document.form1.xuankerenshu.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">学生：</td><td><input name='xuesheng' type='text' id='xuesheng' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	if(parseInt(document.form1.kechengrenshu.value)<parseInt(document.form1.xuankerenshu.value)){alert("对不起，课程人数必需大于选课人数");return false;}
	


return true;   
}   
popheight=450;
</script>  


