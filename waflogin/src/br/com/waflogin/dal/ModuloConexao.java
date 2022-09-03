/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.waflogin.dal;

import java.sql.*;

/**
 *
 * @author wasle
 */
public class ModuloConexao {
    //Método Responsável por estabelecer a conexão com o banco

    public static Connection conector() {
        java.sql.Connection conexao = null;
        // A linha Abaixo Chama o Drive. 
        String driver = "com.mysql.cj.jdbc.Driver";
        //Armazenando informações referente ao banco!
        String url = "jdbc:mysql://localhost:3306/dbaasec";
        String user = "root";
        String password = "Ww241287*";
        // Estabelecendo a conexão com o Banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url,user,password);
            return conexao;
        } catch (Exception e) {
            System.out.println(e);
            return null
        }
    }

}
