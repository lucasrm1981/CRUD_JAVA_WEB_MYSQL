package com.crudjspjava.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.crudjspjava.bean.Usuario;

public class UsuarioDao {
	Connection con;
	PreparedStatement ps;
	
	public void CadastrarUsuario(Usuario objUsuario) throws ClassCastException {
		String sql = "INSERT INTO usuario(nome,password,email,sexo,pais) VALUES(?,sha1(?),?,?,?)";
		new ConexaoDAO();
		con = ConexaoDAO.getConnection();
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setString(1,objUsuario.getNome());
			ps.setString(2,objUsuario.getPasword());
			ps.setString(3,objUsuario.getEmail());
			ps.setString(4,objUsuario.getSexo());
			ps.setString(5,objUsuario.getPais());
			
			ps.execute();
			ps.close();
			
			
		}catch (SQLException e) {
			System.out.println("Erro ao Cadastrar!\n"+e);
		}
	}
	
	public ArrayList<Usuario> ListarUsuarios() {
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
		ArrayList<Usuario> list = new ArrayList<>();
		
		try {
			String sql = "SELECT * FROM usuario";
			
			con = ConexaoDAO.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery(sql);

			while (rs.next()) {
				Usuario usuario = new Usuario();

				usuario.setId(rs.getInt(1));
				usuario.setNome(rs.getString(2));
				usuario.setPasword(rs.getString(3));
				usuario.setEmail(rs.getString(4));
				usuario.setSexo(rs.getString(5));
				usuario.setPais(rs.getString(6));
								
				list.add(usuario);
			}

		} catch (SQLException e) {
			System.out.println("\n Erro ao exibir Dados! \n" + e);
		}
		return list;

	}
	
	public void AtualizarUsuario(Usuario objUsuario) throws ClassCastException {
		String sql = "UPDATE usuario SET nome=?, password=sha1(?), email=?, sexo=?, pais=? WHERE id=?";
		new ConexaoDAO();
		con = ConexaoDAO.getConnection();
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setString(1,objUsuario.getNome());
			ps.setString(2,objUsuario.getPasword());
			ps.setString(3,objUsuario.getEmail());
			ps.setString(4,objUsuario.getSexo());
			ps.setString(5,objUsuario.getPais());
			ps.setInt(6,objUsuario.getId());
			
			ps.execute();
			ps.close();
			
			
		}catch (SQLException e) {
			System.out.println("Erro ao Cadastrar!\n"+e);
		}
	}
	
	public void ExcluirUsuario(Usuario objUsuario) throws ClassCastException {
		String sql = "DELETE FROM usuario WHERE id=?";
		new ConexaoDAO();
		con = ConexaoDAO.getConnection();
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setInt(1,objUsuario.getId());
			
			ps.execute();
			ps.close();
			
			
		}catch (SQLException e) {
			System.out.println("Erro ao Cadastrar!\n "+e);
		}
	}

}
