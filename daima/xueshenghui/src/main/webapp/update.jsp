<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改</title>
</head>
<link rel="stylesheet" href="layui/css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">
<body>
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>信息修改</legend>
</fieldset>
	<div align="center">
		
		<a href="index.jsp">返回主页</a>
		<form action="servlet?method=update" method="post">
			<div>
				学号:
				<input type="text" id="id" name="id" readonly="true"
					value="${param.id}" />
			</div>
			<div>
				政治面貌： 
				  <input type="radio"  name="hubie" id="hubie" value="中共党员">中共党员
                  <input type="radio"  name="hubie" id="hubie" value="中共预备党员">中共预备党员
                  <input type="radio"  name="hubie" id="hubie" value="共青团员">共青团员
                  <input type="radio"  name="hubie" id="hubie" value="群众">群众
                  <input type="radio"  name="hubie" id="hubie" value="其他">其他
					
			</div>
			<div>
			       部门：<input type="text" id="livetype" name="livetype"
					value="${param.livetype}" />
					
			</div>
			<div>
				年龄：<input type="text" id="area" name="area"
					value="${param.area}" />
			</div>
			<div>
				年级：<input type="text" id="roomnum" name="roomnum"
					value="${param.roomnum}" />
			</div>
			<div>
				姓名：<input type="text" id="name" name="name"
					value="${param.name}" />
			</div>
			<div>
				身份证<input type="text" id="idcard" name="idcard"
					value="${param.idcard}" />
			</div>
			<div>
				性别：<input type="radio" id="sex" name=sex  value="男" />男 
				    <input type="radio" id="sex" name="sex" value="女" />女
			</div>
			<div>
				民族：<input type="text" id="nation" name="nation"
					value="${param.nation}" />
			</div>
            <div>
				就职时长：<select class="form-control" id="education" name="education">
                    <option value="一个月以内">一个月以内</option>
                    <option value="六个月以内">六个月以内</option>
                    <option value="一年以内">一年以内</option>
                    <option value="两年以内">两年以内</option>
                    <option value="三年以内">三年以内</option>
                    <option value="四年以内">四年以内</option>
                                </select>
					
			</div>
			 <div class="layui-btn-container">  
  
 <input type="submit" value="修改"  onclick= "return check()" class="layui-btn layui-btn-sm">添加</button>
  
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
        		  isInterger(area);
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
        	
        	if(document.getElementById('idcard').value.length!=18) {
      		  alert('身份证号码位数错误！');
      		  document.getElementById('idcard').focus();
      		  return false;
      		 }

      	
        	
        }
        
    </script>
</html>