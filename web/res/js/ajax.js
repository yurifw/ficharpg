/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function getRequest() {
    try {
        request = new XMLHttpRequest();
    } catch (IEAtual) {
        try {
            request = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (IEAntigo) {
            try {
                request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (falha) {
                request = false;
            }
        }
    }

    if (!request)
        alert("Seu Navegador não suporta Ajax!");
    else
        return request;
}

function sendForm(formId, requestAddress, returnId) {
    var elem = document.getElementById(formId).elements;
    var link = "?";
    for (var i = 0; i < elem.length; i++) {
        if (elem[i].tagName === "INPUT") {
            link += elem[i].name + "=" + elem[i].value + "&";
        }
    }
    link = link.substr(0, link.length - 1);

    var result = document.getElementById(returnId);
    var requisicao = getRequest();

    requisicao.open("POST", requestAddress + link);
    requisicao.send();
    requisicao.onreadystatechange = function() {
        result.innerHTML = requisicao.responseText;
    };

}

// exemplo
//function cadastraCartaCorretiva(){
//	var numeroNota = document.getElementById('txtNumeroNota').value;
//	var razaoSocial =document.getElementById('txtRazaoSocial').value;
//	var uf = document.getElementById('txtTomadorUF').value;
//	var cidade = document.getElementById('txtInsMunicipioEmpresa').value;
//	var endereco= document.getElementById('txtEndereco').value;
//	var email= document.getElementById('txtEmail').value;
//	var inscrMunicipal = document.getElementById('txtInscrMunicipal').value;
//	var inscrEstadual =document.getElementById('txtInscrEstadual').value;
//	var cep = document.getElementById('txtTomadorCEP').value;
//
//	var dados="numeroNota=@numeroNota&razaoSocial=@razaoSocial&uf=@uf&cidade=@cidade&endereco=@endereco&";
//	dados=dados+"email=@email&inscrMunicipal=@inscrMunicipal&inscrEstadual=@inscrEstadual&cep=@cep&insert=true";
//	dados = dados.replace('@numeroNota',numeroNota).replace('@razaoSocial',razaoSocial).replace('@uf',uf);
//	dados = dados.replace('@cidade',cidade).replace('@endereco',endereco).replace('@email',email);
//	dados = dados.replace('@inscrMunicipal',inscrMunicipal).replace('@inscrEstadual',inscrEstadual).replace('@cep',cep);
//
//	var result = document.getElementById('resultado');
//	result.innerHTML = '<h1>Emitindo Corre&ccedil;&atilde;o</h1>';
//
//	var xmlreq =  criaRequest();
//	xmlreq.open("GET","inc/cartacorretiva_inserir.php?"+dados,true);
//	xmlreq.send(dados);
//
//	xmlreq.onreadystatechange= function(){
//		if (xmlreq.readyState == 4){
//			result.innerHTML = xmlreq.responseText;		
//		}
//	}
//
//		
//}