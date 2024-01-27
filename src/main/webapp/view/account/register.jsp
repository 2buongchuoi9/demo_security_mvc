<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register user</title>
</head>
<body>
<jsp:include page="../access/nav.jsp"/>
${mes}
<form method="post" action="/account/register">
    name <input type="text" name="name"/>
    email <input type="email" name="email"/>
    Password <input type="password" name="password"/>
    <button type="submit">register</button>
</form>
</body>
</html>