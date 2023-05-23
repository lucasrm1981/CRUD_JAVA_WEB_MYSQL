<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="../control/atualizarUsuario.jsp" method="post">

<label>ID:</label>
<input type="number" name="id" value="<%=request.getParameter("id") %>" readonly="true">

<label>Nome:</label>
<input type="text" name="nome" value="<%=request.getParameter("nome") %>">

<label>Password:</label>
<input type="password" name="password" value="<%=request.getParameter("password") %>">

<label>E-mail:</label>
<input type="email" name="email" value="<%=request.getParameter("email") %>">

<label>Sexo:</label>
<input type="text" name="sexo" value="<%=request.getParameter("sexo") %>">

<label>País:</label>
<input type="text" name="pais" value="<%=request.getParameter("pais") %>">

<button type="submit">Atualizar</button>

</form>
</body>
</html>