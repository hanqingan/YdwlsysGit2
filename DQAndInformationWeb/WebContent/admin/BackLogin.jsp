<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${msg}
<form action="${pageContext.request.contextPath}/back" method="post">
<input type="hidden" name="method" value="Login">
<input type="text" name="username" value="用户名"> 
<input type="password" name="password" value="密码">
<input type="submit">
</form>
</body>
</html>