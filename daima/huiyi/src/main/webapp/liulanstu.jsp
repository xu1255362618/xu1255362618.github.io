<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
        <h1 style="color: black;">课程信息列表</h1>
        <table class="tb">
            <tr>
        <td><a href="2.jsp">返回菜单</a></td>
        </tr>
            <tr>
                <td>学生学号</td>
                <td>学生姓名</td>
                <td>学生性别</td>
                <td>学生所在班级</td>
                <td>学生专业</td> 
            </tr>
            <c:forEach items="${jibens}" var="item">
                <tr>
                    <td>${item.spid}</td>
                    <td>${item.stuname}</td>
                    <td>${item.sex}</td>
                    <td>${item.banji}</td>
                    <td>${item.ye}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>