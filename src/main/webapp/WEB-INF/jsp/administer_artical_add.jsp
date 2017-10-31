<%--
  Created by IntelliJ IDEA.
  User: caosong
  Date: 2017/8/28
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<form name="myform" id="myform" class="form-horizontal" role="form" method="post">
    <div class="form-group">
        <label for="title" class="col-sm-2 control-label">标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="title" id="title" placeholder="请输入标题" style="width: 400px;">
        </div>
    </div>
    <div class="form-group">
        <label for="ads" class="col-sm-2 control-label">简介</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="ads" id="ads" placeholder="请输入简介" style="width: 400px;">
        </div>
    </div>
    <div class="form-group">
        <label for="content" class="col-sm-2 control-label">内容</label>
        <div class="col-sm-10">
            <textarea class="form-control" name="content" id="content" rows="3" placeholder="请输入内容" style="width: 400px;"></textarea>
        </div>
    </div>
</form>
<button type="submit" onclick="loadContentShow()" class="btn btn-default btn-lg"  style="margin-left: 35%">提交</button>
