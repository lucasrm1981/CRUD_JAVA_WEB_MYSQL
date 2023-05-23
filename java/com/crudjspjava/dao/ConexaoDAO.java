package com.crudjspjava.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoDAO {

	public static java.sql.Connection getConnection() {
		Connection con = null;

        try {
            String dbURL = "jdbc:mysql://192.168.1.101:3306/crudjspjava";            
            String dbUsername = "admin";
            String dbPassword = "admin";

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
            
        } catch (Exception e) {
            System.out.print("\nFalha ao Conectar com o Banco! \n"+e);
        }
        return con;

    }
}
