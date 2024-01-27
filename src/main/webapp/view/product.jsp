<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:include page="access/nav.jsp"/>


<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>price</th>
        <th>quantity</th>
    </tr>
    <c:forEach items="${products}" var="p">
        <tr>
            <th>${p.id}</th>
            <th>${p.name}</th>
            <th>${p.price}</th>
            <th>${p.quantity}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
