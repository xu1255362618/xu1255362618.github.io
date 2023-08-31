<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>学生会信息管理</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <script src="../js/jquery-1.7.2.min.js"></script>
 

<script>
    layui.use('element', function() {
        var element = layui.element;
    });
    function turnto(url){
        $("#c1").attr("src", url)
    }

</script>
  
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo layui-hide-xs layui-bg-black">学生会信息管理</div>
    <!-- 头部区域（可配合layui 已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <!-- 移动端显示 -->
      <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
        <i class="layui-icon layui-icon-spread-left"></i>
      </li>
      
     
      
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item layui-hide layui-show-md-inline-block">
        <a href="javascript:;">
          <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
          tester
        </a>
      
      </li>
      <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
        <a href="javascript:;">
          <i class="layui-icon layui-icon-more-vertical"></i>
        </a>
      </li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="insert.jsp">成员信息添加</a></dd>
            <dd><a href="servlet?method=list">成员信息修改</a></dd>
            <dd><a href="servlet?method=list">成员信息删除</a></dd>
           <dd><a href="servlet?method=list">成员信息查询</a></dd>
          </dl>
        </li>
       
        
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    	<iframe class="layadmin-iframe ifrem_voice" src="welcome.html" width="100%" height="700px"frameborder="0" name="voiceList" scrolling="no"></iframe>
    </div>

    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
 <%-- 显示系统当前时间--%>
<div id="datetime">
  <script>
  setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);
 </script>
 </div>


 
  </div>
</div>


<script src="./layui/layui.js"></script>
<script>
//JS 
layui.use(['element', 'layer', 'util'], function(){
  var element = layui.element
  ,layer = layui.layer
  ,util = layui.util
  ,$ = layui.$;
  
  //头部事件
  util.event('lay-header-event', {
    //左侧菜单事件
    menuLeft: function(othis){
      layer.msg('展开左侧菜单的操作', {icon: 0});
    }
    ,menuRight: function(){
      layer.open({
        type: 1
        ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
        ,area: ['260px', '100%']
        ,offset: 'rt' //右上角
        ,anim: 5
        ,shadeClose: true
      });
    }
   
  });
  
});

</script>
</body>
</html>
      