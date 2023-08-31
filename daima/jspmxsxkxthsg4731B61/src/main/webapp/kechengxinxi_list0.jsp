<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>课程信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有课程信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  课程编号：<input name="kechengbianhao" type="text" id="kechengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  教师：<%=Info.getselect("jiaoshi","jiaoshi","gonghao"," 1=1 ")%>  上课地点：<input name="shangkedidian" type="text" id="shangkedidian" style='border:solid 1px #000000; color:#666666' size="12" />  上课时间：<input name="shangkeshijian1" type="text" id="shangkeshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shangkeshijian2" type="text" id="shangkeshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  学分：<input name="xuefen1" type="text" id="xuefen1"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />-<input name="xuefen2" type="text" id="xuefen2"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kechengxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>课程编号</td>
    <td bgcolor='#CCFFFF'>教师</td>
    <td bgcolor='#CCFFFF'>上课地点</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>上课时间</td>
    <td bgcolor='#CCFFFF'>学分</td>
    <td bgcolor='#CCFFFF'>课程人数</td>
    <td bgcolor='#CCFFFF'>选课人数</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"kechengxinxi"); 
    String url = "kechengxinxi_list.jsp?1=1"; 
    String sql =  "select * from kechengxinxi where 1=1";
	
if(request.getParameter("kechengbianhao")=="" ||request.getParameter("kechengbianhao")==null ){}else{sql=sql+" and kechengbianhao like '%"+request.getParameter("kechengbianhao")+"%'";}
if(request.getParameter("jiaoshi")=="" ||request.getParameter("jiaoshi")==null ){}else{sql=sql+" and jiaoshi like '%"+request.getParameter("jiaoshi")+"%'";}
if(request.getParameter("shangkedidian")=="" ||request.getParameter("shangkedidian")==null ){}else{sql=sql+" and shangkedidian like '%"+request.getParameter("shangkedidian")+"%'";}
if (request.getParameter("shangkeshijian1")==""  ||request.getParameter("shangkeshijian1")==null ) {}else{sql=sql+" and shangkeshijian >= '"+request.getParameter("shangkeshijian1")+"'";}
if (request.getParameter("shangkeshijian2")==""  ||request.getParameter("shangkeshijian2")==null ) {}else {sql=sql+" and shangkeshijian <= '"+request.getParameter("shangkeshijian2")+"'";}
if (request.getParameter("xuefen1")==""  ||request.getParameter("xuefen1")==null ) {}else{sql=sql+" and xuefen >= '"+request.getParameter("xuefen1")+"'";}
if (request.getParameter("xuefen2")==""  ||request.getParameter("xuefen2")==null ) {}else {sql=sql+" and xuefen <= '"+request.getParameter("xuefen2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kechengbianhao") %></td>
    <td><%=map.get("jiaoshi") %></td>
    <td><%=map.get("shangkedidian") %></td>
    <td><%=map.get("shangkeshijian") %></td>
    <td><%=map.get("xuefen") %></td>
    <td><%=map.get("kechengrenshu") %></td>
    <td><%=map.get("xuankerenshu") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="xuanke_add.jsp?id=<%=map.get("id")%>">选课</a>   <a href="kechengxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

