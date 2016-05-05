<%-- 
    Document   : consultaUsuario
    Created on : 30/03/2016, 20:27:43
    Author     : DavidFrancisco
--%>
import java.sql.Connection;
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>Mostrar Usuario</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
         
        <script>
            
           String sql = "";
            Connection con = ConnBD.getConnection();

            if (con == null) {
                throw new SQLException("Erro conectando");
            }

            


            String sql = "INSERT INTO alunos (id, matricula, nome, curso, email, telefone) VALUES (?,?,?,?,?,?)"; 
            
            
            
            
            
        </script> 
    
    
    
    
    
    </head>
    
    
    <body>
        <h1>Mostrar Usuario</h1>
        <form action="sMostrarUsuario" method="POST" name="form" >
            <p> Digite o nome do Aluno</p><input type="text" name="user"/>
            <input type="submit" value="Buscar" name="Buscar"/>
            
    </body>
</html>