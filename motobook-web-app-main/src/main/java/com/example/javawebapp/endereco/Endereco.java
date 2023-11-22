package com.example.javawebapp.endereco;

public class Endereco {
    private Integer id;
    private String nomeEndereco;
    private String cidade;
    private String cep;
    private String complemento;
    
    public Endereco(Integer id, String nomeEndereco, String cidade, String cep, String complemento) {
        this.id = id;
        this.nomeEndereco = nomeEndereco;
        this.cidade = cidade;
        this.cep = cep;
        this.complemento = complemento;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getNomeEndereco() {
        return nomeEndereco;
    }

    public void setNomeEndereco(String nomeEndereco) {
        this.nomeEndereco = nomeEndereco;
    }

    
}
