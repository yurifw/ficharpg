/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ficharpg.dao;

import com.ficharpg.model.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author yurifw
 */
public class UsuarioDAO {
    private final Session session;
    
    public UsuarioDAO() {
        session = CriadorDeSession.getSession();
    }
    
    public void salva(Usuario u){
        Transaction tx = session.beginTransaction();
        session.save(u);
        tx.commit();
    }
    
    
}
