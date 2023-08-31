<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息浏览</title>

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
    <div align="center">
        <h1 style="color: blue;">个人信息列表</h1>
        <table class="tb">
            <tr>
        <td><a href="2.jsp">返回菜单</a></td>
        </tr>
            <tr>
                <td>ID</td>
                <td>姓名</td>
                <td>性别</td>
                <td>身份证号</td>
                <td>手机号</td> 
                <td>职位</td> 
                
            </tr>
            <c:forEach items="${cous}" var="item">
                <tr> <td>    <a href="huiyiServlet?method=chakan&id=${item.id}">${item.cname}</a></td>
                    <td>${item.cpid}</td>
                    <td>${item.cname}</td>
                    <td>${item.num}</td>
                    <td>${item.snum}</td>
                    <td>${item.jiaoshi}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>