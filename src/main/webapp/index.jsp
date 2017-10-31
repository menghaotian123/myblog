<!DOCTYPE html>

<html>

<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/all.css" />
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap-theme.css" />
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="js/myjs.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.3.7-dist/js/bootstrap.js" ></script>
    <script type="text/javascript" src="js/bootstrap-3.3.7-dist/js/npm.js" ></script>
    <script type="text/javascript">
        $(document).ready(function(){
            loadcenter('#home','/Home');
        })
    </script>
</head>

<body class="index_body">
<div class="index_paper">
    <h1 align="center" class="index_title">GreenWishes</h1>
    <!--按钮组-->
    <div align="center" class="index_func">
        <button id="home" class="index_func_btn" onclick="loadcenter('#home','/Home')">首页</button>
        <button id="note" class="index_func_btn" onclick="loadCenterNote('#note','/Note',1)">全部笔记</button>
        <button id="contact" class="index_func_btn" onclick="loadcenter('#contact','/Contact')">联系</button>
        <button id="manager" class="index_func_btn" onclick="loadcenter('#manager','/Admin')">管理</button>
    </div>
    <div id="center">

    </div>
</div>

</body>

</html>