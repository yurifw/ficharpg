/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ficharpg.servlet;

import com.ficharpg.dao.UsuarioDAO;
import com.ficharpg.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yurifw
 */
public class AdicionaUsuarioServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Usuario u = new Usuario();
        u.setEmail(request.getParameter("email"));
        u.setLogin(request.getParameter("login"));
        u.setSenha(request.getParameter("senha"));
        out.println(u.toString());
        UsuarioDAO dao = new UsuarioDAO();
        dao.salva(u);
        out.println("<body>");
        out.println("Usuario cadastrado com sucesso");
        out.println("</body>");
    }
    
}
