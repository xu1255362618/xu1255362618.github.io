<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѡ��</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ѡ���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �γ̱�ţ�<input name="kechengbianhao" type="text" id="kechengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ���ţ�<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12" />  ѧ����<input name="xuesheng" type="text" id="xuesheng" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�γ̱��</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>��ʦ����</td>    <td bgcolor='#CCFFFF'>�Ͽεص�</td>    <td bgcolor='#CCFFFF'>�Ͽ�ʱ��</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>ѡ������</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>����</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"xuanke"); 
    String url = "xuanke_list3.jsp?1=1"; 
    String sql =  "select * from xuanke where gonghao='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("kechengbianhao")=="" ||request.getParameter("kechengbianhao")==null ){}else{sql=sql+" and kechengbianhao like '%"+request.getParameter("kechengbianhao")+"%'";}if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}if(request.getParameter("xuesheng")=="" ||request.getParameter("xuesheng")==null ){}else{sql=sql+" and xuesheng like '%"+request.getParameter("xuesheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kechengbianhao") %></td> <td><%=map.get("kechengmingcheng") %></td> <td><%=map.get("gonghao") %></td> <td><%=map.get("jiaoshixingming") %></td> <td><%=map.get("shangkedidian") %></td> <td><%=map.get("shangkeshijian") %></td> <td><%=map.get("xuefen") %></td> <td><%=map.get("kechengrenshu") %></td> <td><%=map.get("xuankerenshu") %></td> <td><%=map.get("xuesheng") %></td> <td><%=map.get("xingming") %></td> 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="xuanke_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="xuanke_list3.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="xuanke_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>

