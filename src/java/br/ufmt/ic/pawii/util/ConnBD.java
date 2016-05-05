/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.pawii.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author David Francisco
 */
public class ConnBD {
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbtest","root","");
            System.out.println(con);
            return con;
            
        } catch (ClassNotFoundException ex) {
            System.out.println("Classe n?o encontrada: "+ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Erro: "+ex.getMessage());
        }
        
        
        return null;
        
    }      
}
