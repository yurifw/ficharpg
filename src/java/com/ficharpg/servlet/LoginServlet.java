/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ficharpg.servlet;

import com.ficharpg.dao.JogadorDAO;
import com.ficharpg.model.Jogador;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yurifw
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        Jogador j = new Jogador();
        j.setLogin(login);
        j.setSenha(senha);
        JogadorDAO dao = new JogadorDAO();
        Jogador j2 = dao.buscaPorLogin(login);
        
        if (j.equals(j2)) {
            HttpSession session = request.getSession();
            session.setAttribute("jogador", j2);
        } else {
            response.getWriter().print("Não foi possível autenticar");
        }
    }
}
