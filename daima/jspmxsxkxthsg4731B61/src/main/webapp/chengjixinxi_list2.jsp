<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ɼ���Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���гɼ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ѧ�ţ�<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  ѧ�꣺<select name='xuenian' id='xuenian' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><%int nnf=0;for(nnf=2016;nnf>=2010;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select> ѧ�ڣ�<select name='xueqi' id='xueqi' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="��һѧ��">��һѧ��</option><option value="�ڶ�ѧ��">�ڶ�ѧ��</option></select>
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>ѧ��</td>    <td bgcolor='#CCFFFF'>�ɼ�</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
    <td width="60" align="center"><a href="chengjixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="chengjixinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="chengjixinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>

