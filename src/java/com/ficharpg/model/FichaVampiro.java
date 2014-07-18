/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ficharpg.model;

import java.util.Map;

/**
 *
 * @author yurifw
 */
public class FichaVampiro {
    
    // para que não haja erros na hora de ler o arquivo XML, não podem haver Strings vazias na hora de setar o campo
    //cabecalho
    private String nome;
    private String jogador;
    private String cronica;
    private String natureza;
    private String comportamento;
    private String cla;
    private String refugio;
    private String conceito;
    private int geracao;
    //atributos
    private int forca;
    private int destreza;
    private int vigor;
    private int aparencia;
    private int manipulacao;
    private int carisma;
    private int inteligencia;
    private int raciocinio;
    private int percepcao;
    //talentos
    private int prontidao;
    private int esportes;
    private int briga;
    private int esquiva;
    private int empatia;
    private int expressao;
    private int intimidacao;
    private int lideranca;
    private int manha;
    private int labia;
    //pericias
    private int empatiaAnimais;
    private int oficios;
    private int conducao;
    private int etiqueta;
    private int armasFogo;
    private int armasBrancas;
    private int performance;
    private int segurnaca;
    private int furtividade;
    private int sobrevivencia;
    //conhecimento
    private int academico;
    private int computador;
    private int financas;
    private int investigacao;
    private int direito;
    private int linguistica;
    private int medicina;
    private int ocultismo;
    private int politica;
    private int ciencia;
    //vantagens
    private Map<String, Integer> antecedentes;
    private Map<String, Integer> disciplinas;
    private Map<String, Integer> qualidadesDefeitos;
    private int consciencia;
    private int autocontrole;
    private int coragem;
    private int humanidade;
    private int forcaDeVontade;
    private String trilha;
 
    public String getTrilha() {
        return trilha;
    }

    public FichaVampiro setTrilha(String trilha) {
        if (trilha.equals(""))
            trilha=" ";
        this.trilha = trilha;
        return this;
    }

    public int getAcademico() {
        return academico;
    }

    public FichaVampiro setAcademico(int academico) {
        this.academico = academico;
        return this;
    }

    public Map<String,Integer> getAntecedentes() {
        return antecedentes;
    }

    public FichaVampiro setAntecedentes(Map<String,Integer> antecedentes) {
        this.antecedentes = antecedentes;
        return this;
    }
    
    public FichaVampiro addAtencedente(String nome, int nivel){
        this.antecedentes.put(nome, nivel);
        return this;
    }

    public int getAparencia() {
        return aparencia;
    }

    public FichaVampiro setAparencia(int aparencia) {
        this.aparencia = aparencia;
        return this;
    }

    public int getArmasBrancas() {
        return armasBrancas;
    }

    public FichaVampiro setArmasBrancas(int armasBrancas) {
        this.armasBrancas = armasBrancas;
        return this;
    }

    public int getArmasFogo() {
        return armasFogo;
    }

    public FichaVampiro setArmasFogo(int armasFogo) {
        this.armasFogo = armasFogo;
        return this;
    }

    public int getAutocontrole() {
        return autocontrole;
    }

    public FichaVampiro setAutocontrole(int autocontrole) {
        this.autocontrole = autocontrole;
        return this;
    }

    public int getBriga() {
        return briga;
    }

    public FichaVampiro setBriga(int briga) {
        this.briga = briga;
        return this;
    }

    public int getCarisma() {
        return carisma;
    }

    public FichaVampiro setCarisma(int carisma) {
        this.carisma = carisma;
        return this;
    }

    public int getCiencia() {
        return ciencia;
    }

    public FichaVampiro setCiencia(int ciencia) {
        this.ciencia = ciencia;
        return this;
    }

    public String getCla() {
        return cla;
    }

    public FichaVampiro setCla(String cla) {
        if (cla.equals(""))
            cla = " ";
        this.cla = cla;
        return this;
    }

    public String getComportamento() {
        return comportamento;
    }

    public FichaVampiro setComportamento(String comportamento) {
        if (comportamento.equals(""))
            comportamento=" ";
        this.comportamento = comportamento;
        return this;
    }

    public int getComputador() {
        return computador;
    }

    public FichaVampiro setComputador(int computador) {
        this.computador = computador;
        return this;
    }

    public String getConceito() {
        return conceito;
    }

    public FichaVampiro setConceito(String conceito) {
        if (conceito.equals(""))
            conceito= " ";
        this.conceito = conceito;
        return this;
    }

    public int getConducao() {
        return conducao;
    }

    public FichaVampiro setConducao(int conducao) {
        this.conducao = conducao;
        return this;
    }

    public int getConsciencia() {
        return consciencia;
    }

    public FichaVampiro setConsciencia(int consciencia) {
        this.consciencia = consciencia;
        return this;
    }

    public int getCoragem() {
        return coragem;
    }

    public FichaVampiro setCoragem(int coragem) {
        this.coragem = coragem;
        return this;
    }

    public String getCronica() {
        return cronica;
    }

    public FichaVampiro setCronica (String cronica) {
        if (cronica.equals(""))
            cronica=" ";
        this.cronica = cronica;
        return this;
    }

    public int getDestreza() {
        return destreza;
    }

    public FichaVampiro setDestreza(int destreza) {
        this.destreza = destreza;
        return this;
    }

    public int getDireito() {
        return direito;
    }

    public FichaVampiro setDireito(int direito) {
        this.direito = direito;
        return this;
    }

    public Map<String, Integer> getDisciplinas() {
        return disciplinas;
    }

    public FichaVampiro setDisciplinas(Map<String, Integer> disciplinas) {
        this.disciplinas = disciplinas;
        return this;
    }
    
    public FichaVampiro addDisciplina(String nome, int nivel){
        this.disciplinas.put(nome, nivel);
        return this;
    }

    public int getEmpatia() {
        return empatia;
    }

    public FichaVampiro setEmpatia(int empatia) {
        this.empatia = empatia;
        return this;
    }

    public int getEmpatiaAnimais() {
        return empatiaAnimais;
    }

    public FichaVampiro setEmpatiaAnimais(int empatiaAnimais) {
        this.empatiaAnimais = empatiaAnimais;
        return this;
    }

    public int getEsportes() {
        return esportes;
    }

    public FichaVampiro setEsportes(int esportes) {
        this.esportes = esportes;
        return this;
    }

    public int getEsquiva() {
        return esquiva;
    }

    public FichaVampiro setEsquiva(int esquiva) {
        this.esquiva = esquiva;
        return this;
    }

    public int getEtiqueta() {
        return etiqueta;
    }

    public FichaVampiro setEtiqueta(int etiqueta) {
        this.etiqueta = etiqueta;
        return this;
    }

    public int getExpressao() {
        return expressao;
    }

    public FichaVampiro setExpressao(int expressao) {
        this.expressao = expressao;
        return this;
    }

    public int getFinancas() {
        return financas;
    }

    public FichaVampiro setFinancas(int financas) {
        this.financas = financas;
        return this;
    }

    public int getForca() {
        return forca;
    }

    public FichaVampiro setForca(int forca) {
        this.forca = forca;
        return this;
    }

    public int getForcaDeVontade() {
        return forcaDeVontade;
    }

    public FichaVampiro setForcaDeVontade(int forcaDeVontade) {
        this.forcaDeVontade = forcaDeVontade;
        return this;
    }

    public int getFurtividade() {
        return furtividade;
    }

    public FichaVampiro setFurtividade(int furtividade) {
        this.furtividade = furtividade;
        return this;
    }

    public int getGeracao() {
        return geracao;
    }

    public FichaVampiro setGeracao(int geracao) {
        this.geracao = geracao;
        return this;
    }

    public int getHumanidade() {
        return humanidade;
    }

    public FichaVampiro setHumanidade(int humanidade) {
        this.humanidade = humanidade;
        return this;
    }

    public int getInteligencia() {
        return inteligencia;
    }

    public FichaVampiro setInteligencia(int inteligencia) {
        this.inteligencia = inteligencia;
        return this;
    }

    public int getIntimidacao() {
        return intimidacao;
    }

    public FichaVampiro setIntimidacao(int intimidacao) {
        this.intimidacao = intimidacao;
        return this;
    }

    public int getInvestigacao() {
        return investigacao;
    }

    public FichaVampiro setInvestigacao(int investigacao) {
        this.investigacao = investigacao;
        return this;
    }

    public String getJogador() {
        return jogador;
    }

    public FichaVampiro setJogador(String jogador) {
        if (jogador.equals(""))
            jogador = " ";
        this.jogador = jogador;
        return this;
    }

    public int getLabia() {
        return labia;
    }

    public FichaVampiro setLabia(int labia) {
        this.labia = labia;
        return this;
    }

    public int getLideranca() {
        return lideranca;
    }

    public FichaVampiro setLideranca(int lideranca) {
        this.lideranca = lideranca;
        return this;
    }

    public int getLinguistica() {
        return linguistica;
    }

    public FichaVampiro setLinguistica(int linguistica) {
        this.linguistica = linguistica;
        return this;
    }

    public int getManha() {
        return manha;
    }

    public FichaVampiro setManha(int manha) {
        this.manha = manha;
        return this;
    }

    public int getManipulacao() {
        return manipulacao;
    }

    public FichaVampiro setManipulacao(int manipulacao) {
        this.manipulacao = manipulacao;
        return this;
    }

    public int getMedicina() {
        return medicina;
    }

    public FichaVampiro setMedicina(int medicina) {
        this.medicina = medicina;
        return this;
    }

    public String getNatureza() {
        return natureza;
    }

    public FichaVampiro setNatureza(String natureza) {
        if (natureza.equals(""))
            natureza=" ";
        this.natureza = natureza;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public FichaVampiro setNome(String nome) {
        if (nome.equals(""))
            nome = " ";
        this.nome = nome;
        return this;
    }

    public int getOcultismo() {
        return ocultismo;
    }

    public FichaVampiro setOcultismo(int ocultismo) {
        this.ocultismo = ocultismo;
        return this;
    }

    public int getOficios() {
        return oficios;
    }

    public FichaVampiro setOficios(int oficios) {
        this.oficios = oficios;
        return this;
    }

    public int getPercepcao() {
        return percepcao;
    }

    public FichaVampiro setPercepcao(int percepcao) {
        this.percepcao = percepcao;
        return this;
    }

    public int getPerformance() {
        return performance;
    }

    public FichaVampiro setPerformance(int performance) {
        this.performance = performance;
        return this;
    }

    public int getPolitica() {
        return politica;
    }

    public FichaVampiro setPolitica(int politica) {
        this.politica = politica;
        return this;
    }

    public int getProntidao() {
        return prontidao;
    }

    public FichaVampiro setProntidao(int prontidao) {
        this.prontidao = prontidao;
        return this;
    }

    public Map<String, Integer> getQualidadesDefeitos() {
        return qualidadesDefeitos;
    }

    public FichaVampiro setQualidadesDefeitos(Map<String, Integer> qualidadesDefeitos) {
        this.qualidadesDefeitos = qualidadesDefeitos;
        return this;
    }
    
    public FichaVampiro addQualidadDefeito(String nome, int nivel){
        this.qualidadesDefeitos.put(nome, nivel);
        return this;
    }

    public int getRaciocinio() {
        return raciocinio;
    }

    public FichaVampiro setRaciocinio(int raciocinio) {
        this.raciocinio = raciocinio;
        return this;
    }

    public String getRefugio() {
        return refugio;
    }

    public FichaVampiro setRefugio(String refugio) {
        if (refugio.equals(""))
            refugio=" ";
        this.refugio = refugio;
        return this;
    }

    public int getSegurnaca() {
        return segurnaca;
    }

    public FichaVampiro setSegurnaca(int segurnaca) {
        this.segurnaca = segurnaca;
        return this;
    }

    public int getSobrevivencia() {
        return sobrevivencia;
    }

    public FichaVampiro setSobrevivencia(int sobrevivencia) {
        this.sobrevivencia = sobrevivencia;
        return this;
    }

    public int getVigor() {
        return vigor;
    }

    public FichaVampiro setVigor(int vigor) {
        this.vigor = vigor;
        return this;
    }

    
}
