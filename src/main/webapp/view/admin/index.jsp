<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<jsp:include page="../access/nav.jsp"></jsp:include>

<%--${user}--%>

<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>roles</th>
        <th>type account</th>
        <th>image</th>
        <th>edit</th>
    </tr>
    <c:forEach items="${users}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.name}</td>
            <td>${u.email}</td>
            <td>${u.roleString}</td>
            <td>${u.authType}</td>
            <td><img src="${u.image}" width="50" height="50" alt=""></td>
            <td>edit</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
