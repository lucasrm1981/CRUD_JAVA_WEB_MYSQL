<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="../control/excluirUsuario.jsp" method="post">
<label>ID:</label>
<input type="text" name="id" value="<%=request.getParameter("id") %>" readonly="true">

<label>Password:</label>
<input type="text" name="password" value="<%=request.getParameter("nome") %>" readonly="true">


<button type="submit">Excluir</button>
</body>
</html>