<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=chengjixinxi.xls");
%>
<html>
  <head>
    <title>�ɼ���Ϣ</title>
  </head>

  <body >
  <p>���гɼ���Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>�ɼ�</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "chengjixinxi_list.jsp?1=1"; 
    String sql =  "select * from chengjixinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("xuenian") %></td>    <td><%=map.get("xueqi") %></td>    <td><%=map.get("chengji") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

