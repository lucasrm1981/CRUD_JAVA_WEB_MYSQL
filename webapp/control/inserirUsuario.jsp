<%@page import="com.crudjspjava.dao.UsuarioDao"%>
<%@page import="com.crudjspjava.bean.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Usuário</title>
</head>
<body>
	<%
	try {
		Usuario objUsuario = new Usuario();
		objUsuario.setNome(request.getParameter("nome"));
		objUsuario.setPasword(request.getParameter("password"));
		objUsuario.setEmail(request.getParameter("email"));
		objUsuario.setSexo(request.getParameter("sexo"));
		objUsuario.setPais(request.getParameter("pais"));

		UsuarioDao objUsuarioDao = new UsuarioDao();
		objUsuarioDao.CadastrarUsuario(objUsuario);
		
		response.sendRedirect("../view/index.jsp");

	} catch (Exception e) {

	}
	%>
	
</body>
</html>