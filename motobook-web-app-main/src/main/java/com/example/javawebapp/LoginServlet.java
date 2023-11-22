package com.example.javawebapp;

import java.io.IOException;
import java.util.*;

import com.example.javawebapp.validators.EmailValidator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        ArrayList<String> erros = new ArrayList<>();

        if (email == null || email.isBlank()) {
            erros.add("E-mail não pode ser vazio");
        }

        if (email != null && !EmailValidator.isValid(email)) {
            erros.add("E-mail inválido");
        }

        if (senha == null || senha.isEmpty()) {
            erros.add("Senha não pode ser vazia");
        }
    
        if (erros.isEmpty()) {
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("email", email);
            request.setAttribute("senha", senha);
            request.setAttribute("erros", erros);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    
    }
}