/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ficharpg.dao;

import com.ficharpg.model.Jogador;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author yurifw
 */
public class JogadorDAO {
    private final Session session;
    
    public JogadorDAO() {
        session = CriadorDeSession.getSession();
    }
    
    public void salva(Jogador u){
        Transaction tx = session.beginTransaction();
        session.save(u);
        tx.commit();
    }
    
    public Jogador buscaPorLogin(String login){
        
        Transaction tx = session.beginTransaction();
        Jogador j = (Jogador)session.createQuery("from Jogador as jogador where jogador.login = :login").setParameter("login", login).uniqueResult();
        return j;
    }
    
}
