<%-- 
    Document   : FichaRPG
    Created on : Nov 4, 2013, 10:24:52 AM
    Author     : ywaki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib tagdir="/WEB-INF/tags/" prefix="storyteller"%>
        
        <script src="js/DesabilitaBotaoDireito.js"></script>
        <script src="js/fichaRPG.js"></script>
        
        <link rel="stylesheet" href="css/FichaRpgScreen.css" media="all">
        <link rel="stylesheet" href="css/FichaRpgPrint.css" media="print">



        <title>Ficha Vampiro</title>

    </head>
    <body>
        <div id="imagemFicha" style="width: 1074px; height: 1434px; float: left; position: relative;">
            <img src="imagens/ficha-vampiro/FichaMascara.jpg">
        </div>
        <div id="ficha">
            <input class="Cabecalho" type="text" id="txtNome"  style="margin-top: 225px; margin-left: 140px; width: 228px">
            <input class="Cabecalho" type="text" id="txtNatureza"  style="margin-top: 225px; margin-left: 130px; width:200px ">
            <input class="Cabecalho" type="text" id="txtGeracao"  style="margin-top: 225px; margin-left: 105px; width: 185px">
            <br>
            <input class="Cabecalho"  type="text" id="txtJogador"  style="margin-top:3px;margin-left: 170px; width: 200px"/>
            <input class="Cabecalho"  type="text" id="txtComportamento"  style="margin-top:0px;margin-left: 200px; width:130px"/>
            <input class="Cabecalho" type="text" id="txtRefugio"  style="margin-top:0px;margin-left: 101px; width:187px"/>
            <br>
            <input class="Cabecalho" type="text" id="txtCronica"  style="margin-top:5px;margin-left: 170px; width: 200px"/>
            <input class="Cabecalho" type="text" id="txtCla"  style="margin-top:0px;margin-left: 65px; width: 265px"/>
            <input class="Cabecalho" type="text" id="txtConceito"  style="margin-top:0px;margin-left: 100px; width: 190px">
            <br>
            <storyteller:nivelStoryteller type="Atributo" id="nvlForca" marginLeft="225px" marginTop=" 82px"/>
            <storyteller:nivelStoryteller type="Atributo" id="nvlCarisma" marginLeft="188px" marginTop=" 0px"/>
            <storyteller:nivelStoryteller type="Atributo" id="nvlPercepcao" marginLeft="145px" marginTop=" 0px"/>
            <br>
            <storyteller:nivelStoryteller type="Atributo" id="nvlDestreza" marginLeft="225px" marginTop=" 3px"/>
            <storyteller:nivelStoryteller type="Atributo" id="nvlManipulacao" marginLeft="188px" marginTop=" 0px"/>
            <storyteller:nivelStoryteller type="Atributo" id="nvlInteligencia" marginLeft="145px" marginTop=" 0px"/>
            <br>
            <storyteller:nivelStoryteller type="Atributo" id="nvlVigor"  marginLeft="225px" marginTop=" 0px"/>
            <storyteller:nivelStoryteller type="Atributo" id="nvlAparencia" marginLeft="188px" marginTop=" 0px"/>
            <storyteller:nivelStoryteller type="Atributo" id="nvlRaciocinio" marginLeft="145px" marginTop=" 0px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlProntidao" marginLeft="235px" marginTop=" 80px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlEmpatiaAnimais" marginLeft="180px" marginTop=" 0px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlAcademicos" marginLeft="140px" marginTop=" 0px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlEsportes" marginLeft="235px" marginTop=" 3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlOficios" marginLeft="180px" marginTop=" 0px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlComputador" marginLeft="140px" marginTop=" 0px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlBriga" marginLeft="235px" marginTop="3px" />
            <storyteller:nivelStoryteller type="Habilidade" id="nvlConducao" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlFinancas" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlEsquiva" marginLeft="235px" marginTop="3px" />
            <storyteller:nivelStoryteller type="Habilidade" id="nvlEtiqueta" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlInvestigacao" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlEmpatia" marginLeft="235px" marginTop="3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlArmasFogo" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlDireito" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlExpressao" marginLeft="235px" marginTop="3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlArmasBrancas" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlLinguistica" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlIntimidacao" marginLeft="235px" marginTop="3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlPerformance" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlMedicina" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlLideranca" marginLeft="235px" marginTop="3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlSeguranca" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlOcultismo" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlManha" marginLeft="235px" marginTop="3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlFurtividade" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlPolitica" marginLeft="140px"/>
            <br>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlLabia" marginLeft="235px" marginTop="3px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlSobrevivencia" marginLeft="180px"/>
            <storyteller:nivelStoryteller type="Habilidade" id="nvlCiencia" marginLeft="140px"/>
            <div class="Vantagens" style="margin-top: 80px; padding-left: 30px">
                <div class="Antecedentes" style="float: left;  width: 340px">
                    <storyteller:skilltable qtdLinhas="4" nome="Antecedente" />
                </div>
                <div class="Discplinas" style="float: left; width: 340px">
                    <storyteller:skilltable qtdLinhas="4" nome="Disciplina" />
                </div>
                <div class="Virtudes">
                    <storyteller:nivelStoryteller id="nvlConsciencia" type="Atributo" marginLeft="150px" marginTop="6px"/>
                    <storyteller:nivelStoryteller id="nvlAutocontrole" type="Atributo" marginLeft="150px" marginTop="55px"/>
                    <storyteller:nivelStoryteller id="nvlCoragem" type="Atributo" marginLeft="150px" marginTop="53px"/>
                </div>
            </div>
            <div class="parteEmbaixoDaVantagens" style="margin-top: 60px; padding-left: 30px">
                <div class="qualidadesDefeitos" style="float: left; width: 340px">
                    <storyteller:qualidadetable nome="QualidadesDefeitos" qtdLinhas="7" />
                </div>
                <div class="humanidade">
                    <input type="text" class="Cabecalho" id="txtTrilha" style="margin-left: 18px; width: 290px">
                    <br>
                    <storyteller:nivelhumanidade id="nvlHumanidade" marginLeft="20px" marginTop="10px"/>
                    <br>
                    <storyteller:nivelhumanidade id="nvlForcaVontade" marginLeft="20px" marginTop="30px"/>
                </div>
            </div>
        </div>
        <div id="menudiv" style="float: right">
            <a href="#" onclick="window.print()">Imprimir Ficha</a>
            <br>
            <a href="sobre.jsp" target="_blank">Sobre</a>
            <a 
        </div>


    </body>
</html>
