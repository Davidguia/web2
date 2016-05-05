<%-- 
    Document   : index
    Created on : 23/03/2016, 20:48:22
    Author     : DavidFrancisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>        
        
        <script>
            
            $(document).ready(
                function () {
                    $("#form-dados").on("submit",
                        function () {
                            carregarDados();
                            return false;
                        }
                    );
                }
            );
            
            
            
    
            function carregarDados() {
                $.ajax(
                        {
                            type : "POST",
                            url : "ServletJSONTrabIII",
                            cache : true,
                            data : { 
                                    id : $("#txt-id").val(),  
                                    matricula : $("#txt-matricula").val(),
                                    nome : $("#txt-nome").val(),
                                    curso : $("#txt-curso").val(),
                                    email : $("#txt-email").val(),
                                    telefone : $("#txt-telefone").val(),
                                    acao : "cadastrar"
                                    },
                            dataType : "json",
                            success : function (json) {
                                if (json.status=="success") {
                                $("body")
                                        .append("<p>"+json.seuId+" - "
                                                +json.suaMatricula+" - "
                                                +json.seuNome+" - "
                                                +json.seuCurso+ "-"
                                                +json.seuEmail+ "-"
                                                +json.seuTelefone+"</p>");
                                    }
                                 else {
                                     alert("Erro executando operação: "+json.message);
                                 }
                                                               
                            },
                            error : function () {
                                alert("erro executando requisicao");
                            }
                        }
                );
            }
            
            
        </script>
        
        
        
        <script>
            
            $(document).ready(
                function () {
                    $("#form-dados").on("click",
                        function () {
                            listarDados();
                            return false;
                        }
                    );
                }
            );
            
            
            
    
            function listarDados() {
                $.ajax(
                        {
                            type : "POST",
                            url : "ServletJSONTrabIII",
                            cache : true,
                            data : { 
                                    id : $("#txt-id").val(),  
                                    matricula : $("#txt-matricula").val(),
                                    nome : $("#txt-nome").val(),
                                    curso : $("#txt-curso").val(),
                                    email : $("#txt-email").val(),
                                    telefone : $("#txt-telefone").val(),
                                    acao : "listar"
                                    },
                            dataType : "json",
                            success : function (json) {
                                if (json.status=="success") {
                                $("body")
                                        .append("<p>"+json.seuId+" - "
                                                +json.suaMatricula+" - "
                                                +json.seuNome+" - "
                                                +json.seuCurso+ "-"
                                                +json.seuEmail+ "-"
                                                +json.seuTelefone+"</p>");
                                         
                                    for (i in json.alunos) {
                                    
                                            $("body").append("<p>"+json.alunos[i].id" - "+json.alunos[i].matricula+"- "+json.alunos[i].nome+ "- "+json.alunos[i].curso+
                                            "-"+json.alunos[i].email+ "- " +json.alunos[i].matricula+"</p>");
                                    }
                                    
                                }
                                 else {
                                     alert("Erro executando operação: "+json.message);
                                 }
                                                               
                            },
                            error : function () {
                                alert("erro executando requisicao");
                            }
                        }
                );
            }
            
            
        </script>
        
        
        
        
    </head>
    <body>
        
        <form id="form-dados" action="ServletJSONTrabIII" method="POST">
            
            <table border="1">
            <tr>
                <td>id: </td>                            
                <td> <input id="txt-id" type="text" name="id" /></td>
            <br />
            </tr>   
            
            <tr>
                <td>Matricula: </td>                            
                <td> <input id="txt-matricula" type="text" name="matricula" /></td>
            <br />
            </tr>  
            
            <tr>
                <td>Nome: </td>                            
                <td> <input id="txt-nome" type="text" name="nome" /></td>
            <br />
            </tr>  
            
            <tr>
                <td>Cuso: </td>                            
                <td> <input id="txt-curso" type="text" name="curso" /></td>
            <br />
            </tr>      
                    

           <tr>
                <td>email: </td>                            
                <td> <input id="txt-email" type="text" name="email" /></td>
            <br />
            </tr>  
           
           <tr>
                <td>Telefone: </td>                            
                <td> <input id="txt-telefone" type="text" name="telefone" /></td>
            <br />
            </tr>  
           <br />
           
           <div>
        
               <button onclick="listarDados()">Consultar</button>

           </div>
        
        </form>   
         
    </body>
    <button type="submit">Salvar</button>
</html>
