<%--
  Created by IntelliJ IDEA.
  User: caosong
  Date: 2017/8/2
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2 class="text-center">${noteItem.title}</h2>
<p class="text-right">${noteItem.creatdate}</p>
<%--<p class="text-left lead">随着国民素质不断地提升，人们对于高学历的需求也不断地提高，这就促成了考研人数不断上升的趋势，这就造成了基数巨大的报考问题。 这里所说的问题，并不是单纯的报考，而是指导师与学生相互之间没有交流，导师不了解学生，而学生也不了解导师的报考难题，对于这种问题传统的报考方式已经略显不足，因此我们开发了一款针对于相互了解，考前交流的互选调剂app。--%>
<%--Sat Jul 22 20:17:26 CST 2017 评论数:2000--%>
<%--<br>随着国民素质不断地提升，人们对于高学历的需求也不断地提高，这就促成了考研人数不断上升的趋势，这就造成了基数巨大的报考问题。 这里所说的问题，并不是单纯的报考，而是指导师与学生相互之间没有交流，导师不了解学生，而学生也不了解导师的报考难题，对于这种问题传统的报考方式已经略显不足，因此我们开发了一款针对于相互了解，考前交流的互选调剂app。--%>
<%--Sat Jul 22 20:17:26 CST 2017 评论数:2000</p>--%>
<p class="text-left lead">
<c:forEach items="${contentList}" varStatus="i" var="item" >
${item.content}<br>
</c:forEach>
</p>