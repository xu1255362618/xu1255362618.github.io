<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>            
<head>
<meta charset="UTF-8">
<title>学生会信息管理系统</title>

<link rel="stylesheet" href="layui/css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">

</head>
<body>
<%
         Object message = request.getAttribute("message");
         Object user = request.getAttribute("user");
         if(message!=null && !"".equals(message)){      
    %>
         <script type="text/javascript">
              alert("<%=request.getAttribute("message")%>");
         </script>
    <%} %>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>信息列表</legend>
</fieldset>
   <div align="center" class="layui-input-block">
    <form action="searchServlet" method="post">
   <div class="layui-form-item">
        <label class="layui-form-label">搜索条件</label>
    <div class="layui-input-block">
      <select name="cxfs" lay-filter="cxfs">
        
        
        <option id="cxfs"value ="1">姓名</option>
        <option id="cxfs" value ="2">性别</option>
        <option id="cxfs"value="3">就职时长</option>
        <option id="cxfs"value="4">民族</option>
      </select>
    </div>
        
        </div>
        
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block">
      <input type="text" id="value" name="value" lay-verify="title" autocomplete="off  placeholder="请输入条件" class="layui-input">
    </div>
  
      <button type="submit"  id="select" name="select" class="layui-btn" lay-submit="" lay-filter="demo1">查询</button>
      
    </div>
           
      </form>
        
        </h1>
        <a href="index.jsp">返回主页</a>
        <table >
            <tr>
                 
                <td>姓名</td>
                <td>性别</td>
                <td>年龄</td>
                <td>手机号</td>
                <td>用户名</td>
                <td>密码</td>
                 <td>职位</td>
                  <td>隶属</td>
                  
                <td align="center" colspan="2">操作</td>
            </tr>
            <c:forEach items="${list}" var="item">
                
                 <tr>
                    <td>${item.name}</td>
                    <td>${item.sex}</td>
                    <td>${item.age}</td>
                    <td>${item.phone}</td>
                    <td>${item.username}</td>
                    <td>${item.password}</td>
                    <td>${item.possion}</td>
                    <td>${item.pid}</td>
                   
                    <td style="border:1px solid blue"><a href="update.jsp?id=${item.id}">修改</a></td>
                    <td style="border:1px solid red"><a href="servlet?method=delete&id=${item.id}">删除</a></td>
                     
                </tr>
                
            </c:forEach>
        </table>
    </div> 
</body>

                      
</html>