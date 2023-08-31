<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Javabean.bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>站点起始浏览</title>

</head>
<body>
    <%
         Object message = request.getAttribute("message");
         if(message!=null && !"".equals(message)){
     
    %>
     <script type="text/javascript">
              alert("<%=request.getAttribute("message")%>");
         </script>
    <%} %>
    <%

out.println("接收到:");
%>
    <div align="center">
        
        <table class="tb">
            <tr>
        <td><a href="chaxun.jsp">返回查询页面</a></td>
        </tr>
            
                
     <tr>
     <td>经过车站数:${jingguochezhanshu}</td>
     </tr>         
                <table border="1">
<tr>该线路经过车站:</tr>
<tr>
<c:forEach items="${list1}" var="a">
	<td>${a.zhanming} </td>
	
</c:forEach>
</table>
</tr>
                
            
            
        </table>
    </div>
</body>
</html>>