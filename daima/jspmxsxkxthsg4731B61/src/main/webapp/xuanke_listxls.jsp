<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuanke.xls");
%>
<html>
  <head>
    <title>选课</title>
  </head>

  <body >
  <p>已有选课列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>课程编号</td>    <td bgcolor='#CCFFFF'>课程名称</td>    <td bgcolor='#CCFFFF'>工号</td>    <td bgcolor='#CCFFFF'>教师姓名</td>    <td bgcolor='#CCFFFF'>上课地点</td>    <td bgcolor='#CCFFFF'>上课时间</td>    <td bgcolor='#CCFFFF'>学分</td>    <td bgcolor='#CCFFFF'>课程人数</td>    <td bgcolor='#CCFFFF'>选课人数</td>    <td bgcolor='#CCFFFF'>学生</td>    <td bgcolor='#CCFFFF'>姓名</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "xuanke_list.jsp?1=1"; 
    String sql =  "select * from xuanke where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kechengbianhao") %></td>    <td><%=map.get("kechengmingcheng") %></td>    <td><%=map.get("gonghao") %></td>    <td><%=map.get("jiaoshixingming") %></td>    <td><%=map.get("shangkedidian") %></td>    <td><%=map.get("shangkeshijian") %></td>    <td><%=map.get("xuefen") %></td>    <td><%=map.get("kechengrenshu") %></td>    <td><%=map.get("xuankerenshu") %></td>    <td><%=map.get("xuesheng") %></td>    <td><%=map.get("xingming") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

