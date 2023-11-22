package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "redefinirSenha", value = "/redefinirSenha")
public class RedefinirSenhaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String novaSenha = request.getParameter("novaSenha");
        String confirmarSenha = request.getParameter("confirmarSenha");

        System.out.println(email);
        System.out.println(novaSenha);
        System.out.println(confirmarSenha);
    }
}