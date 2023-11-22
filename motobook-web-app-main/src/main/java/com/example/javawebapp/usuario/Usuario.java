package com.example.javawebapp.usuario;
import com.example.javawebapp.endereco.Endereco;

public class Usuario {
    private Integer id;
    private String nome;
    private String email;
    private String senha;
    private String telefone;
    private String cpf;
    private String foto;
    private boolean verificar_email;
    private Endereco endereco;
    
    public Usuario(Integer id, String nome, String email, String senha, String telefone, String cpf, String foto, boolean verificar_email, Endereco endereco) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.telefone = telefone;
        this.cpf = cpf;
        this.foto = foto;
        this.verificar_email = verificar_email;
        this.endereco = endereco;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public boolean isVerificar_email() {
        return verificar_email;
    }

    public void setVerificar_email(boolean verificar_email) {
        this.verificar_email = verificar_email;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }
}