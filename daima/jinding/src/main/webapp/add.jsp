<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息注册</title>
</head>
<link rel="stylesheet" href="layui/css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">
<body>
    <%
        Object message = request.getAttribute("message");
        if (message != null && !"".equals(message)) {
    %>
    <script type="text/javascript">
              alert("<%=request.getAttribute("message")%>"); //弹出对话框
    </script>
    <%
        }
    %>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>信息注册</legend>
</fieldset>
    <div align="center">
        <div class="layui-btn-container">  
  
 <a href="index.jsp"> <button type="button" class="layui-btn layui-btn-sm">返回主页</button>
  
</div> 
      
       
  <form action="Servlet?method=add" method="post">
      <table id="addTable" class="table table-bordered  ">
       <tr class="text-center row">
               <tr> 
                  <td class="col-sm-2">
                    姓名
                  </td>
                  <td class="col-sm-4">
                   <input type="text" class="form-control"  name="name" id="name" >
                  </td>
                  
              <tr class="text-center row">
                <td class="col-sm-2">
           性别
                </td>
                <td class="col-sm-4">
                  <input type="radio"  name="sex" id="sex" value="男">男
                  <input type="radio"  name="sex" id="sex" value="女">女
                  <
                </td></tr>
                <tr class="text-center row">
                <td class="col-sm-2">
           年龄
                </td>
                </td>
                  <td class="col-sm-4">
                   <input type="text" class="form-control"  name="age" id="age" >
                  </td>
                  </tr>
                <tr>
                <td class="col-sm-2">
                  所属部门:
                </td>
                <td class="col-sm-4">
                          <input type="radio"  name="possion" id="possion" value="部门">部门
                          <input type="radio"  name="possion" id="possion" value="办公室">办公室
                        </td><tr><td> 
                        </td>
                        <td> 
                          <input type="radio"  name="possion" id="possion" value="副厂长">副厂长
                          <input type="radio"  name="possion" id="possion" value="厂长">厂长
                          
                         
                </td>
              </tr>

              <tr class="text-center row">
                <td class="col-sm-2">
                  手机号:
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="phone" id="phone" placeholder="请输入手机号">
                </td>
                </tr>
                
                <tr>
                <td class="col-sm-2 ">
                  用户名
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="username" id="username" placeholder="请输入用户名">
                </td>
              </tr>

              <tr class="text-center row">
                <td class="col-sm-2">
                  密码
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="password" id="password" placeholder="请输入密码">
                </td>
                 </tr>

              
              <tr class="text-center row">
                <td class="col-sm-2">
                  隶属
                </td>
                <td class="col-sm-4">
                  <input type="radio"  name="pid" id="pid" value='1'>部门
                  <input type="radio"  name="pid" id="pid" value='2'>办公室
                  <input type="radio"  name="pid" id="pid" value='3'>副厂长
                  <input type="radio"  name="pid" id="pid" value='4'>厂长
                </td>
                 </tr>

              

              
            </table>
               <div class="layui-btn-container">  
  
 <a href="index.jsp"> <input type="submit" value="添加"  onclick= "return check()" class="layui-btn layui-btn-sm">添加</button>
  
</div> 
          
      </form> 
    </div>
</body>
<script type="text/javascript">
        function check()                        //封装一个<body>中做成点击事件的函数
        {
        	if(document.getElementById('area').value=='') {
        		  alert('年龄不能为空！');
        		  document.getElementById('area').focus();
        		  return false;
        		 }
        	else if(document.getElementById('area').value%1!=0){
        		alert('年龄不是整数！');
        		return false;
        	}
        	if(document.getElementById('roomnum').value=='') {
      		  alert('年级不能为空！');
      		  document.getElementById('roomnum').focus();
      		  return false;
      		 }
        	else if(document.getElementById('roomnum').value%1!=0){
        		alert('年级不是整数！');
        		return false;
        	}
        	if(document.getElementById('name').value=='') {
      		  alert('姓名不能为空！');
      		  document.getElementById('name').focus();
      		  return false;
      		 }
        	
        	if(document.getElementById('idcard').value.length!=18) {
      		  alert('身份证号码位数错误！');
      		  document.getElementById('idcard').focus();
      		  return false;
      		 }
        	if(document.getElementById('nation').value=='') {
      		  alert('民族不能为空！');
      		  document.getElementById('nation').focus();
      		  return false;
      		 }
        }
        
    </script>
</html>
