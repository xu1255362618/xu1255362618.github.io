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
      
       
  <form action="servlet?method=insert" method="post">
      <table id="addTable" class="table table-bordered  ">
       <tr class="text-center row">
               <tr> 
                  <td class="col-sm-2">
                    学号
                  </td>
                  <td class="col-sm-4">
                   <input type="text" class="form-control"  name="id" id="id" >
                  </td>
                  
              <tr class="text-center row">
                <td class="col-sm-2">
           政治面貌
                </td>
                <td class="col-sm-4">
                  <input type="radio"  name="hubie" id="hubie" value="中共党员">中共党员
                  <input type="radio"  name="hubie" id="hubie" value="中共预备党员">中共预备党员
                  <input type="radio"  name="hubie" id="hubie" value="共青团员">共青团员
                  <input type="radio"  name="hubie" id="hubie" value="群众">群众
                  <input type="radio"  name="hubie" id="hubie" value="其他">其他
                </td></tr>
                <tr>
                <td class="col-sm-2">
                  所属部门:
                </td>
                <td class="col-sm-4">
                          <input type="radio"  name="livetype" id="livetype" value="主席团">主席团
                          <input type="radio"  name="livetype" id="livetype" value="秘书处">秘书处
                        </td><tr><td> 
                        </td>
                        <td> 
                          <input type="radio"  name="livetype" id="livetype" value="组织部">组织部
                          <input type="radio"  name="livetype" id="livetype" value="文艺部">文艺部
                          
                          <input type="radio"  name="livetype" id="livetype" value="体育部">体育部
                          <input type="radio"  name="livetype" id="livetype" value="外联部">外联部
                         
                          <input type="radio"  name="livetype" id="livetype" value="宣传部">宣传部
                          <input type="radio"  name="livetype" id="livetype" value="女生部">女生部
                          <input type="radio"  name="livetype" id="livetype" value="卫生部">卫生部
                          <input type="radio"  name="livetype" id="livetype" value="纪检部">纪检部
                </td>
              </tr>

              <tr class="text-center row">
                <td class="col-sm-2">
                  年龄:
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="area" id="area" placeholder="请输入年龄">
                </td>
                </tr>
                
                <tr>
                <td class="col-sm-2 ">
                  年级:
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="roomnum" id="roomnum" placeholder="请输入年级（1，2，3，4）">
                </td>
              </tr>

              <tr class="text-center row">
                <td class="col-sm-2">
                  姓名
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="name" id="name" placeholder="请输入姓名">
                </td>
                 </tr>

              <tr class="text-center row">
                <td class="col-sm-2 ">
                  身份证号码
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="idcard" id="idcard" placeholder="请输入身份证号码">
                </td>
              </tr>

              <tr class="text-center row">
                <td class="col-sm-2">
                  性别
                </td>
                <td class="col-sm-4">
                  <input type="radio"  name="sex" id="sex" value="男">男
                  <input type="radio"  name="sex" id="sex" value="女">女
                </td>
                 </tr>

              <tr class="text-center row">
                <td class="col-sm-2">
                  民族
                </td>
                <td class="col-sm-4">
                  <input type="text" class="form-control"  name="nation" id="nation" placeholder="民族">
                </td>
              </tr>

              <tr class="text-center row">
                <td>
                  就职时长
                </td>
                <td colspan="3">
                  <select class="form-control" id="education" name="education">
                    <option value="一个月以内">一个月以内</option>
                    <option value="六个月以内">六个月以内</option>
                    <option value="一年以内">一年以内</option>
                    <option value="两年以内">两年以内</option>
                    <option value="三年以内">三年以内</option>
                    <option value="四年以内">四年以内</option>
                   
                  </select>
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
