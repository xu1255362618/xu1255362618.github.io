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
        <h1 style="color: black;">会议信息列表</h1>
        <table class="tb">
            <tr>
                <td>  会议名称  </td>
            </tr>
            <c:forEach items="${cous}" var="item">
                <tr>
                    <td>    <a href="huiyiServlet?method=chakan&id=${item.id}">${item.cname}</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>