package com.example.javawebapp;

import java.io.*;
import java.util.*;

import com.example.javawebapp.usuario.UsuarioDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "cadastro", value = "/cadastro")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nomeCompleto = request.getParameter("nomeCompleto");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String telefone = request.getParameter("telefone");
        String cpf = request.getParameter("cpf");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        String cep = request.getParameter("cep");
        String complemento = request.getParameter("complemento");
        String nomeEndereco = request.getParameter("nomeEndereco");

        ArrayList<String> erros = new ArrayList<>();

        if (email == null || email.isBlank()) {
            erros.add("E-mail não pode ser vazio");
        }

        if (senha == null || senha.isEmpty()) {
            erros.add("Senha não pode ser vazia");
        }

        if (senha != null && (senha.length() < 8 || senha.length() > 50)) {
            erros.add("Senha deve ter no mínimo 8 e no máximo 50 caracteres");
        }
        
        if (senha != null) {
            boolean temLetraMinuscula = false;
            boolean temLetraMaiuscula = false;
            boolean temDigito = false;
        
            for (char c : senha.toCharArray()) {
                if (Character.isLowerCase(c)) {
                    temLetraMinuscula = true;
                } else if (Character.isUpperCase(c)) {
                    temLetraMaiuscula = true;
                } else if (Character.isDigit(c)) {
                    temDigito = true;
                }
            }

            if (!temLetraMinuscula) {
                erros.add("A Senha deve ter uma letra minúscula");
            }

            if (!temLetraMaiuscula) {
                erros.add("A Senha deve ter uma letra maiúscula");
            }

            if (!temDigito) {
                erros.add("A Senha deve ter um número");
            }
        }

        if (telefone.length() > 11 || telefone.length() < 11) {
            erros.add("O telefone deve conter 11 caracteres. Exemplo: 11912345678");
        }

        if (cpf.length() > 14 || cpf.length() < 14) {
            erros.add("O CPF deve conter 14 caracteres. Exemplo: 123.456.789-10");
        }

        if (cep.length() > 9 || cep.length() < 9) {
            erros.add("O CEP deve conter 9 caracteres. Exemplo: 12345-678");
        }

        if (erros.isEmpty()) {

            if (UsuarioDao.existeComEmail(email)) {
                request.setAttribute("existeErro", "Já existe um usuário com esse e-mail");
                request.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(request, response);
            } else {
                UsuarioDao.cadastrar(nomeCompleto, email, senha, telefone, cpf, nomeEndereco, cidade, cep, complemento);
                response.sendRedirect("login.jsp");
            }
        } else {
            request.setAttribute("nomeCompleto", nomeCompleto);
            request.setAttribute("email", email);
            request.setAttribute("senha", senha);
            request.setAttribute("telefone", telefone);
            request.setAttribute("cpf", cpf);
            request.setAttribute("cidade", cidade);
            request.setAttribute("estado", estado);
            request.setAttribute("cep", cep);
            request.setAttribute("complemento", complemento);
            request.setAttribute("nomeEndereco", nomeEndereco);
            request.setAttribute("erros", erros);
            request.getRequestDispatcher("cadastro.jsp").forward(request, response);
        }
    }
}