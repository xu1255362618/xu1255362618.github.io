<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">

.leftMenu{
    background-color:#7986CB;
    width:250px; 
    height:600px;
    position:relative;
    top:0px;
}

.menuParent{
    background-color:#BBDEFB;
}



</style>
</head>
<body>

<div class="leftMenu">
    <div class="menu">
    
    
        <div class="menuParent">
            <div class="ListTitlePanel">
                <div class="ListTitle">
                    <strong>客户菜单</strong>                    
                    <div class="leftbgbt"></div>
                </div>
            </div>
            
            <div class="menuList">
            <div><a target="main_right" href="fangchanServlet?method=liulankecheng">房产购买</a></div> 
                <div><a target="main_right" href="updates.jsp">修改个人信息</a></div>
                <div><a target="main_right" href="fangchanServlet?method=liulankecheng1">浏览房产信息</a></div>
                              
            </div>
        </div>
        
        
    </div>
</div>

<script type="text/javascript">



</script>

</body>
</html>