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
import org.hibernate.exception.ConstraintViolationException;

/**
 *
 * @author yurifw
 */
public class AdicionaJogadorServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType ("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        try{
            Jogador j = new Jogador(login, nome, email, senha);
            JogadorDAO dao = new JogadorDAO();
            dao.salva(j);
            out.println("Usuario cadastrado com sucesso");
        } catch(IllegalArgumentException iae) {
            out.println(iae.getMessage());
        } catch (ConstraintViolationException cve){
            //apenas 2 campos unicos, entao se n for login repetido, é email repetido
            String msg = cve.getConstraintName().equals("login")?
                    "Este Login já é utilizado =/" : 
                    "Este email já está cadastrado, você pode tentar recuperar a senha através dele.";
            out.println(msg);
        }
        
    }
    
}
