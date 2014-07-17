/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ficharpg.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author yurifw
 */
@Entity
public class Jogador {
    @Id @GeneratedValue
    private int id;
    @Column(unique = true)
    private String login;
    private String nome;
    @Column(unique = true)
    private String email;
    private String senha;

    public Jogador(){
        
    }
    
    public Jogador(String login, String nome, String email, String senha) {
        this();
        setLogin(login);
        setNome(nome);
        setEmail(email);
        setSenha(senha);
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        if (login.trim().isEmpty()) throw new IllegalArgumentException("O Login é obrigatório");
        this.login = login;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome.trim().isEmpty()) throw new IllegalArgumentException("O Nome é obrigatório");
        this.nome = nome;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if (email.trim().isEmpty()) throw new IllegalArgumentException("O Email é obrigatório");
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        if (senha.isEmpty()) throw new IllegalArgumentException("A Senha é obrigatória");
        if (senha.length()<6) throw new IllegalArgumentException("A Senha deve conter pelo menos 6 caracteres");
        
        if (senha.length()==64){
            this.senha = senha;
        } else {
            this.senha = toSHA256(senha);
        }
        
    }

    private String toSHA256(String passwordToHash) {
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] bytes = md.digest(passwordToHash.getBytes());
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++){
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();
        } 
        catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return generatedPassword;
    }

    
    
    @Override
    public String toString() {
        return  "Nome: "+getNome()+" Email: "+getEmail()+" login: "+getLogin();
    }

    @Override
    public boolean equals(Object obj) {
        Jogador j = (Jogador) obj;
        return this.login.equals(j.getLogin()) && this.senha.equals(j.getSenha());
    }
    
           
}
