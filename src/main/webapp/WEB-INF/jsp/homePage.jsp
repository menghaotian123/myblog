
<%--
  Created by IntelliJ IDEA.
  User: caosong
  Date: 2017/7/22
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--<div class="index_content">--%>
    <%--<h2 style="color: #2894ff;"><a>${resultList[0].title}</a></h2>--%>
        <%--<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${resultList[0].ads}</p>--%>
        <%--<h4 align="right">${resultList[0].creatdate} 评论数:2000</h4>--%>
    <%--&lt;%&ndash;<h3>${resultList[0].title}</h3>&ndash;%&gt;--%>
<%--</div>--%>
<c:forEach items="${resultList}" varStatus="i" var="item" >
    <div class="index_content">
        <h2 style="color: #2894ff;"><a href="Javascript:loadCenterNote('#note','/Note','${item.id}')">${item.title}</a></h2>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${item.ads}</p>
        <h4 align="right">${item.creatdate} 评论数:2000</h4>
    </div>
</c:forEach>
