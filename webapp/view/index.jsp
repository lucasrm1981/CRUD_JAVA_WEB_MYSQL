<%@page import="java.util.ArrayList"%>
<%@page import="com.crudjspjava.dao.UsuarioDao"%>
<%@page import="com.crudjspjava.bean.Usuario"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exibição de Usuários</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<table>
<tr>
<th>ID</th>
<th>Nome</th>
<th>Senha</th>
<th>E-mail</th>
<th>Sexo</th>
<th>País</th>
<th>Ação</th>
</tr>

	<%
	try {
		UsuarioDao objUsuarioDao = new UsuarioDao();
		ArrayList<Usuario> list = objUsuarioDao.ListarUsuarios();
		
		for(int i=0; i < list.size(); i++){
		out.print("<tr><td>"+list.get(i).getId()+"</td>");
		out.print("<td>"+list.get(i).getNome()+"</td>");
		out.print("<td>"+list.get(i).getPasword()+"</td>");
		out.print("<td>"+list.get(i).getEmail()+"</td>");
		out.print("<td>"+list.get(i).getSexo()+"</td>");
		out.print("<td>"+list.get(i).getPais()+"</td>");
		
		out.print("<td><a href='../model/frmUsuarioExcluir.jsp?id="+list.get(i).getId()+"&nome="+list.get(i).getNome()+"'>Exluir</a>");
		
		out.print("<a href='../model/frmUsuarioAtualizar.jsp?id="+list.get(i).getId()+"&nome="+list.get(i).getNome()+"&password="+list.get(i).getPasword()+"&email="+list.get(i).getEmail()+"&sexo="+list.get(i).getSexo()+"&pais="+list.get(i).getPais()+"'> Alterar</a></td></tr>");

		}

	} catch (Exception e) {
		out.print("Erro na Listagem dos Usuários");
	}
	%>
	
	</table>
	<center>
	<h3><a href="../model/frmUsuarioCadastrar.jsp">Cadastrar Novo Usuário</a></h3>
	</center>
</body>
</html>