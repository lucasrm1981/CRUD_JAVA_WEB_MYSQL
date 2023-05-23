<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadstrar Usuário</title>
</head>
<body>
<form action="../control/inserirUsuario.jsp" method="post">
<label>Nome:</label>
<input type="text" name="nome" >

<label>Password:</label>
<input type="password" name="password"">

<label>E-mail:</label>
<input type="email" name="email" ">

<label>Sexo:</label>
<input type="text" name="sexo" ">

<label>País:</label>
<input type="text" name="pais" >

<button type="submit">Cadastrar</button>

</form>
</body>
</html>