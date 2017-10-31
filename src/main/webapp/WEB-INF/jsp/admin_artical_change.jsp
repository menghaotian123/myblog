<%--
  Created by IntelliJ IDEA.
  User: caosong
  Date: 2017/8/30
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="input-group" align="center">
    <input type="text" class="form-control">
    <span class="input-group-addon">搜  索</span>
</div>
<table class="table table-striped">
    <caption>全部文章</caption>
    <thead>
    <tr>
        <th>标题</th>
        <th>时间</th>
        <th>id</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${result}" varStatus="i" var="item" >
        <tr>
            <td>${item.title}</td>
            <td>${item.date}</td>
            <td>${item.id}</td>
        </tr>

    </c:forEach>
    </tbody>
</table>