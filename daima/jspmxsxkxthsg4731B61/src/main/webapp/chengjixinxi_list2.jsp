<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>成绩信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有成绩信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  学号：<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  学年：<select name='xuenian' id='xuenian' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><%int nnf=0;for(nnf=2016;nnf>=2010;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select> 学期：<select name='xueqi' id='xueqi' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="第一学期">第一学期</option><option value="第二学期">第二学期</option></select>
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>学号</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF'>学年</td>    <td bgcolor='#CCFFFF'>学期</td>    <td bgcolor='#CCFFFF'>成绩</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"chengjixinxi"); 
    String url = "chengjixinxi_list2.jsp?1=1"; 
    String sql =  "select * from chengjixinxi where xuehao='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+request.getParameter("xuehao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xuenian")=="" ||request.getParameter("xuenian")==null ){}else{sql=sql+" and xuenian like '%"+request.getParameter("xuenian")+"%'";}if(request.getParameter("xueqi")=="" ||request.getParameter("xueqi")==null ){}else{sql=sql+" and xueqi like '%"+request.getParameter("xueqi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td> <td><%=map.get("xingming") %></td> <td><%=map.get("xuenian") %></td> <td><%=map.get("xueqi") %></td> <td><%=map.get("chengji") %></td> 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="chengjixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="chengjixinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="chengjixinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>

