<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=kechengxinxi.xls");
%>
<html>
  <head>
    <title>�γ���Ϣ</title>
  </head>

  <body >
  <p>���пγ���Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ̱��</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>�Ͽεص�</td>    <td bgcolor='#CCFFFF' width='65' align='center'>�Ͽ�ʱ��</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>ѡ������</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "kechengxinxi_list.jsp?1=1"; 
    String sql =  "select * from kechengxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("kechengbianhao") %></td>    <td><%=map.get("kechengmingcheng") %></td>    <td><%=map.get("shangkedidian") %></td>    <td><%=map.get("shangkeshijian") %></td>    <td><%=map.get("xuefen") %></td>    <td><%=map.get("kechengrenshu") %></td>    <td><%=map.get("xuankerenshu") %></td>    
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

