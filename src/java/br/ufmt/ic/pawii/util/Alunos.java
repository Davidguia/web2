/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.pawii.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author DavidFrancisco
 */
public class Alunos {
    
    

    public static String getAlunos(int id, String matricula,String nome, String curso, String email, String telefone) {
        try {
            
            

            
            String strAlunos;
            

            PreparedStatement stm;

            Connection con = ConnBD.getConnection();

            if (con == null) {
                throw new SQLException("Erro conectando");
            }

            
            

            String sql = "INSERT INTO alunos (id, matricula, nome, curso, email, telefone) VALUES (?,?,?,?,?,?)";
            String sql1 = "SELECT * FROM alunos";
            
            
            stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            stm.setString(2, matricula);
            stm.setString(3, nome);
            stm.setString(4, curso);
            stm.setString(5, email);
            stm.setString(6, telefone);
         
            
            int rs = stm.executeUpdate();
            
            JSONArray alunos = new JSONArray();
            
//            while (rs.next()) {
//                
//                String matr = rs.getString(1);
//                String id_ = rs.getString(2);
//                
//                JSONObject jsonAluno = new JSONObject();
//                jsonAluno.put("id", id);                
//                jsonAluno.put("matricula", matricula);
//                alunos.put(jsonAluno);
//            }
            
            JSONObject jsonRetorno = new JSONObject();
            jsonRetorno.put("seuId", id);
            jsonRetorno.put("suaMatricula", matricula);
            jsonRetorno.put("seuNome", nome);
            jsonRetorno.put("seuCurso", curso);
            jsonRetorno.put("seuEmail", email);
            jsonRetorno.put("seuTelefone", telefone);
            jsonRetorno.put("status", "success");
            
            strAlunos = jsonRetorno.toString();
            
            return strAlunos;
            
        } catch (SQLException ex) {
                System.out.println("Error: "+ex.getMessage());
                JSONObject jsonRetorno = new JSONObject();
                jsonRetorno.put("status", "error");
                jsonRetorno.put("message", ex.getMessage());
                return jsonRetorno.toString();
        } catch (Exception e) {
                JSONObject jsonRetorno = new JSONObject();
                jsonRetorno.put("status", "error");
                jsonRetorno.put("message", e.getMessage());
                return jsonRetorno.toString();
        }
       
       
    }

     public static String selectAlunos(int id, String matricula,String nome, String curso, String email, String telefone) throws SQLException {
         
          try {
            
                       
            String strAlunos;
            

             Statement stm;

            Connection con = ConnBD.getConnection();

            if (con == null) {
                throw new SQLException("Erro conectando");
            }
            
            stm = con.createStatement();
            String sql = "SELECT * FROM alunos";  
            ResultSet rs = stm.executeQuery(sql);
            
            JSONArray alunos = new JSONArray();
            
            JSONObject jsonRetorno = new JSONObject();
            jsonRetorno.put("seuId", id);
            jsonRetorno.put("suaMatricula", matricula);
            jsonRetorno.put("seuNome", nome);
            jsonRetorno.put("seuCurso", curso);
            jsonRetorno.put("seuEmail", email);
            jsonRetorno.put("seuTelefone", telefone);
            jsonRetorno.put("status", "success");
            
            strAlunos = jsonRetorno.toString();
            
            return strAlunos;
            
        } catch (SQLException ex) {
                System.out.println("Error: "+ex.getMessage());
                JSONObject jsonRetorno = new JSONObject();
                jsonRetorno.put("status", "error");
                jsonRetorno.put("message", ex.getMessage());
                return jsonRetorno.toString();
        } catch (Exception e) {
                JSONObject jsonRetorno = new JSONObject();
                jsonRetorno.put("status", "error");
                jsonRetorno.put("message", e.getMessage());
                return jsonRetorno.toString();
        }
       
       
    }
            
            
                
         
     }


    
