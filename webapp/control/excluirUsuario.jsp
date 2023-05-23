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
	
	UsuarioDao objUsuarioDao = new UsuarioDao();
	objUsuarioDao.ExcluirUsuario(objUsuario);
	
	response.sendRedirect("../view/index.jsp");
	
}catch(Exception e){
	
}
%>

</body>
</html>