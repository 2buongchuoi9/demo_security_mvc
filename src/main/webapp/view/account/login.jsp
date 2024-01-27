<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<jsp:include page="../access/nav.jsp"/>
${mes}
<form method="post" action="/account/login-check">
    email <input name="email"/> <br/>
    password <input name="password"/> <br/>
    <button type="submit">login</button>
    <a href="/oauth2/authorization/google">login with google</a>
    <a href="/oauth2/authorization/facebook">login with facebook</a>
</form>
</body>
</html>