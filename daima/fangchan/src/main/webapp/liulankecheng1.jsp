<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程浏览</title>

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
        <h1 style="color: blue;">房产信息列表</h1>
        <table class="tb">
            <tr>
        <td><a href="2.jsp">返回菜单</a></td>
        </tr>
            <tr>
                <td>房产编号</td>
                <td>户型</td>
                <td>房产地址</td>
                <td>建造年份</td>
                <td>建造面积</td> 
                <td>销售报价</td> 
                <td>销售状态</td> 
                <td>房产经纪人ID</td> 
                 <td>顾客ID</td> 
            </tr>
            <c:forEach items="${cous}" var="item">
                <tr>
                    <td>${item.cpid}</td>
                    <td>${item.cname}</td>
                    <td>${item.num}</td>
                   <td>${item.jiaoshi}</td>
                    <td>${item.snum}</td>
                    <td>${item.year}</td>
                    <td>${item.area}</td>
                    <td>${item.sales}</td>
                    <td>${item.status}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>