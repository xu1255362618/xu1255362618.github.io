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
                    <strong>管理员菜单</strong>                    
                    <div class="leftbgbt"></div>
                </div>
            </div>
            
            <div class="menuList">
                <div><a target="main_right" href="addtea.jsp">添加销售信息</a></div>
                <div><a target="main_right" href="addcourse.jsp">添加房产信息</a></div>
                <div><a target="main_right" href="liulankecheng.jsp">查询房产信息</a></div>   
                <div><a target="main_right" href="update.jsp">密码重置</a></div>   
                            
            </div>
        </div>
        
        
    </div>
</div>

<script type="text/javascript">



</script>

</body>
</html>