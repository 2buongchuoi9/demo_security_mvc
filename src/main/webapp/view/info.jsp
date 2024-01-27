<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="access/nav.jsp"/>


name: ${user.user.name} <br>
email: ${user.user.email}<br>
authType: ${user.user.authType}<br>
role: ${user.user.roleString}<br>
authId: ${user.user.authId}<br>
image: <img src="${user.user.image}" alt=""><br>
</body>
</html>
