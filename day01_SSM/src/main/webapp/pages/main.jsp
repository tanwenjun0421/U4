<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2019/12/17
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<center>
    <table class="table table-striped table-responsive table-bordered">
        <tr>
            <th>文档编号</th>
            <th>文档名称</th>
            <th>文档摘要</th>
            <th>上传人</th>
            <th>上传时间</th>
        </tr>
        <c:forEach items="${entryList}" var="entry" varStatus="vs">
            <tr <c:if test="${vs.index%2==0}">bgcolor="#7fff00" "</c:if> >
                <td>${entry.id}</td>
                <td>${entry.title}</td>
                <td>${entry.summary}</td>
                <td>${entry.uploaduser}</td>
                <td><fmt:formatDate value="${entry.createdate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
