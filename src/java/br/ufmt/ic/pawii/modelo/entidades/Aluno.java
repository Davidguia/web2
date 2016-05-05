/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.pawii.modelo.entidades;

/**
 *
 * @author DavidFrancisco
 */
public class Aluno {
    private String id;
    private String matricula;
    private String nome;
    private String Curso;
    private String email;
    private String telefone;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCurso() {
        return Curso;
    }

    public void setCurso(String Curso) {
        this.Curso = Curso;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    

    public Aluno(String id, String matricula, String nome, String Curso, String email, String telefone) {
        this.id = id;
        this.matricula = matricula;
        this.nome = nome;
        this.Curso = Curso;
        this.email = email;
        this.telefone = telefone;
    }
}

   