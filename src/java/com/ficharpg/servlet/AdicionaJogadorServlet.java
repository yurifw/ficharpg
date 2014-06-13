/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ficharpg.servlet;

import com.ficharpg.dao.JogadorDAO;
import com.ficharpg.model.Jogador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yurifw
 */
public class AdicionaJogadorServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Jogador u = new Jogador();
        u.setEmail(request.getParameter("email"));
        u.setLogin(request.getParameter("login"));
        u.setSenha(request.getParameter("senha"));
        out.println(u.toString());
        JogadorDAO dao = new JogadorDAO();
        dao.salva(u);
        out.println("Usuario cadastrado com sucesso");
    }
    
}
