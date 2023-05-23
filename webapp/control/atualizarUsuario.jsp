<%@page import="com.crudjspjava.dao.UsuarioDao"%>
<%@page import="com.crudjspjava.bean.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try{
	Usuario objUsuario = new Usuario();
	objUsuario.setId(Integer.parseInt(request.getParameter("id")));
	objUsuario.setNome(request.getParameter("nome"));
	objUsuario.setPasword(request.getParameter("password"));
	objUsuario.setEmail(request.getParameter("email"));
	objUsuario.setSexo(request.getParameter("sexo"));
	objUsuario.setPais(request.getParameter("pais"));
	
	UsuarioDao objUsuarioDao = new UsuarioDao();
	objUsuarioDao.AtualizarUsuario(objUsuario);
	
	response.sendRedirect("../view/index.jsp");
	
}catch(Exception e){
	out.print("Não atualizado\n" +e);
}
%>



</body>
</html>