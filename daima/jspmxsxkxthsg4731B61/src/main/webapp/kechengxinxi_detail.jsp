<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�γ���Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"kechengxinxi");
     %>
  �γ���Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>���ţ�</td><td width='39%'><%=m.get("gonghao")%></td><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>�γ̱�ţ�</td><td width='39%'><%=m.get("kechengbianhao")%></td><td width='11%'>�γ����ƣ�</td><td width='39%'><%=m.get("kechengmingcheng")%></td></tr><tr><td width='11%'>�Ͽεص㣺</td><td width='39%'><%=m.get("shangkedidian")%></td><td width='11%'>�Ͽ�ʱ�䣺</td><td width='39%'><%=m.get("shangkeshijian")%></td></tr><tr><td width='11%'>ѧ�֣�</td><td width='39%'><%=m.get("xuefen")%></td><td width='11%'>�γ�������</td><td width='39%'><%=m.get("kechengrenshu")%></td></tr><tr><td width='11%'>ѡ��������</td><td width='39%'><%=m.get("xuankerenshu")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


