<%-- 
    Document   : FichaRPG
    Created on : Nov 4, 2013, 10:24:52 AM
    Author     : ywaki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib tagdir="/WEB-INF/tags/" prefix="storyteller"%>

        <script src="res/js/DesabilitaBotaoDireito.js"></script>
        <script src="res/js/fichaRPG.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Goudy+Bookletter+1911' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="res/css/FichaRpgScreen.css" media="all">
        <link rel="stylesheet" href="res/css/FichaRpgPrint.css" media="print">
        <link rel="stylesheet" href="res/joyride/joyride-2.1.css">


        <title>Ficha Vampiro</title>

    </head>
    <body>

        <img src="res/imagens/ficha-vampiro/ficha_vampiro_cabecalho.png">

        <div id="ficha" class="ficha">
            <div id="cabecalho">
                <div style="float: left; padding-left: 64px;">
                    <div style="float:left">Nome</div><input class="Cabecalho" type="text" id="txtNome" >
                    <div style="clear: both"></div>
                    <div style="float:left">Jogador</div><input class="Cabecalho"  type="text" id="txtJogador"/>
                    <div style="clear: both"></div>
                    <div style="float: left">Crônica</div><input class="Cabecalho" type="text" id="txtCronica" />
                    <div style="clear: both"></div>
                </div>
                <div style="float: left; padding-left: 20px;">
                    <div style="float: left">Natureza</div><input class="Cabecalho" type="text" id="txtNatureza">
                    <div style="clear: both"></div>
                    <div style="float: left">Comportamento</div><input class="Cabecalho"  type="text" id="txtComportamento"/>
                    <div style="clear: both"></div>
                    <div style="float: left">Clã</div><input class="Cabecalho" type="text" id="txtCla" />
                    <div style="clear: both"></div>
                </div>
                <div style="float: left; padding-left: 20px;">
                    <div style="float: left">Geração</div><input class="Cabecalho" type="text" id="txtGeracao" >
                    <div style="clear: both"></div>
                    <div style="float: left">Refúgio</div><input class="Cabecalho" type="text" id="txtRefugio"/>                        
                    <div style="clear: both"></div>
                    <div style="float: left">Conceito</div><input class="Cabecalho" type="text" id="txtConceito">
                    <div style="clear: both"></div>
                </div>
            </div>
            <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_atributos.png">
            <div id="atributos">
                <div id="fisicos" style="padding-left: 64px; width: 300px; float: left;">
                    <storyteller:nivelStoryteller campo="Força" type="Atributo" id="nvlForca"/>
                    <storyteller:nivelStoryteller campo="Destreza" type="Atributo" id="nvlDestreza" />
                    <storyteller:nivelStoryteller campo="Vigor" type="Atributo" id="nvlVigor" />
                </div>
                <div id="sociais" style="padding-left: 26px; width: 300px; float: left;">
                    <storyteller:nivelStoryteller campo="Carisma" type="Atributo" id="nvlCarisma" />
                    <storyteller:nivelStoryteller campo="Manipulação" type="Atributo" id="nvlManipulacao" />
                    <storyteller:nivelStoryteller campo="Aparência" type="Atributo" id="nvlAparencia" />
                </div>
                <div id = "mentais" style=" padding-left: 25px; width: 280px; float: left;">
                    <storyteller:nivelStoryteller campo="Percepção" type="Atributo" id="nvlPercepcao" />
                    <storyteller:nivelStoryteller campo="Inteligência" type="Atributo" id="nvlInteligencia" />
                    <storyteller:nivelStoryteller campo="Raciocinio" type="Atributo" id="nvlRaciocinio" />
                </div>
            </div>
            <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_habilidades.png">
            <div id="habilidades" style="line-height: 25px;">
                <div id="talentos" style="padding-left: 65px;  width: 300px;float: left ">
                    <storyteller:nivelStoryteller campo="Prontidão" type="Habilidade" id="nvlProntidao" />
                    <storyteller:nivelStoryteller campo="Esportes" type="Habilidade" id="nvlEsportes" />
                    <storyteller:nivelStoryteller campo="Briga" type="Habilidade" id="nvlBriga" />
                    <storyteller:nivelStoryteller campo="Esquiva" type="Habilidade" id="nvlEsquiva"/>
                    <storyteller:nivelStoryteller campo="Empatia" type="Habilidade" id="nvlEmpatia" />
                    <storyteller:nivelStoryteller campo="Expressão" type="Habilidade" id="nvlExpressao" />
                    <storyteller:nivelStoryteller campo="Intimidação" type="Habilidade" id="nvlIntimidacao" />                
                    <storyteller:nivelStoryteller campo="Liderança" type="Habilidade" id="nvlLideranca"/>
                    <storyteller:nivelStoryteller campo="Manha" type="Habilidade" id="nvlManha"/>
                    <storyteller:nivelStoryteller campo="Lábia" type="Habilidade" id="nvlLabia" />                
                </div>
                <div id="pericias" style="padding-left: 25px;width: 340px; float:left">
                    <storyteller:nivelStoryteller campo="Empatia c/ Animais" type="Habilidade" id="nvlEmpatiaAnimais" />
                    <storyteller:nivelStoryteller campo="Ofícios" type="Habilidade" id="nvlOficios" />
                    <storyteller:nivelStoryteller campo="Condução" type="Habilidade" id="nvlConducao" />
                    <storyteller:nivelStoryteller campo="Etiqueta" type="Habilidade" id="nvlEtiqueta" />
                    <storyteller:nivelStoryteller campo="Armas de Fogo" type="Habilidade" id="nvlArmasFogo" />
                    <storyteller:nivelStoryteller campo="Armas Brancas" type="Habilidade" id="nvlArmasBrancas" />
                    <storyteller:nivelStoryteller campo="Performance" type="Habilidade" id="nvlPerformance" />
                    <storyteller:nivelStoryteller campo="Segurança" type="Habilidade" id="nvlSeguranca"/>
                    <storyteller:nivelStoryteller campo="Furtividade" type="Habilidade" id="nvlFurtividade" />
                    <storyteller:nivelStoryteller campo="Sobrevivência" type="Habilidade" id="nvlSobrevivencia"/>
                </div>
                <div id="conhecimento" style="padding-left: 20px; width: 250px; float:left">
                    <storyteller:nivelStoryteller campo="Acadêmicos" type="Habilidade" id="nvlAcademicos" />
                    <storyteller:nivelStoryteller campo="Computador" type="Habilidade" id="nvlComputador" />
                    <storyteller:nivelStoryteller campo="Finanças" type="Habilidade" id="nvlFinancas" />            
                    <storyteller:nivelStoryteller campo="Investigação" type="Habilidade" id="nvlInvestigacao"/>            
                    <storyteller:nivelStoryteller campo="Direito" type="Habilidade" id="nvlDireito" />
                    <storyteller:nivelStoryteller campo="Linguística" type="Habilidade" id="nvlLinguistica" />
                    <storyteller:nivelStoryteller campo="Medicina" type="Habilidade" id="nvlMedicina" />
                    <storyteller:nivelStoryteller campo="Ocultismo" type="Habilidade" id="nvlOcultismo" />
                    <storyteller:nivelStoryteller campo="Política" type="Habilidade" id="nvlPolitica" />
                    <storyteller:nivelStoryteller campo="Ciência" type="Habilidade" id="nvlCiencia" />
                </div>
            </div>
            <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_vantagens.png">
            <div class="Vantagens" style="padding-left: 30px; height: 130px; ">
                <div class="Antecedentes" style="float: left;  width: 340px">
                    <storyteller:skilltable qtdLinhas="4" nome="Antecedente" />
                </div>
                <div class="Discplinas" style="float: left; width: 340px;">
                    <storyteller:skilltable qtdLinhas="4" nome="Disciplina" />
                </div>
                <div class="Virtudes" style="float:left; padding-left: 10px ; width: 280px">
                    <storyteller:nivelStoryteller campo="Consciencia<br>Convicção" id="nvlConsciencia" type="Atributo" /> <br>
                    <storyteller:nivelStoryteller campo="Autocontrole<br>Instintos" id="nvlAutocontrole" type="Atributo" /><br>
                    <storyteller:nivelStoryteller campo="Coragem" id="nvlCoragem" type="Atributo" />
                </div>
            </div>
            <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador.png">

            <div class="parteEmbaixoDaVantagens" style="padding-left: 30px">
                <div class="qualidadesDefeitos" style="float: left; width: 340px;">
                    <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_qualidades.png">
                    <storyteller:qualidadetable nome="QualidadesDefeitos" qtdLinhas="7" />
                </div>
                <div class="humanidade" style="float:left; width: 340px">
                    <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_humanidade.png">
                    <input type="text" id="txtTrilha" style="margin-left: 18px; width: 290px;">
                    <storyteller:nivelhumanidade id="nvlHumanidade" marginLeft="20px" marginTop="10px"/>
                    <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_forca_vontade.png">
                    <storyteller:nivelhumanidade id="nvlForcaVontade" marginLeft="20px"/>
                    <img src="res/imagens/ficha-vampiro/quadrados.png" style="margin-left: 20px">
                    <img src="res/imagens/ficha-vampiro/ficha_vampiro_sangue.png">
                    <img src="res/imagens/ficha-vampiro/quadrados.png" style="margin-left: 20px">
                    <img id="testeId" src="res/imagens/ficha-vampiro/quadrados.png" style="margin-left: 20px">

                </div>
                <div class="vitalidade" style="float:left;">
                    <img src="res/imagens/ficha-vampiro/ficha_vampiro_separador_vitalidade.png">

                </div>
            </div>
        </div>
        <div id="menudiv" style="float: right">
            <input type="button" id="btnRide" value="Ajuda" class="btnAjuda" style="position: fixed">
            <br>
            <br>
            <a id="lnkImprimir" href="#" onclick="window.print()">Imprimir Ficha</a>

        </div>


        <ol id="joyRideTipContent" style="display: none">
            <li data-id="nvlForca" data-button="Próximo" data-options="tipLocation:right">
                Para aumentar um ponto, clique com o botão esquerdo,
                para diminuir clique com o botão direito.<br><br></li>
            <li data-class="editavel" data-button="Próximo">
                Dê um clique duplo para escrever neste campo<br><br></li>
            <li data-id="lnkImprimir" data-button="Fim :-)" data-options="tipLocation:left">
                Você pode imprimir a ficha. Ao imprimir, você também pode selecionar Imprimir para Arquivo e salvar em pdf.<br><br></li>
        </ol>

        <script type="text/javascript" src="res/joyride/jquery-1.10.1.js"></script>
        <script type="text/javascript" src="res/joyride/jquery.cookie.js"></script>
        <script type="text/javascript" src="res/joyride/modernizr.mq.js"></script>
        <script type="text/javascript" src="res/joyride/jquery.joyride-2.1.js"></script>
        <script>
                $("#btnRide").click(function() {
                    $('#joyRideTipContent').joyride({
                        autoStart: true,
                        postStepCallback: function(index, tip) {
                            if (index == 2) {
                                $(this).joyride('set_li', false, 1);
                            }
                        },
                        modal: false
                    });
                });

        </script>
    </body>
</html>
