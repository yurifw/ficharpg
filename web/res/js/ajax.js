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

    result.innerHTML = "Carregando...";
    
    requisicao.open("POST", requestAddress + link);
    requisicao.send();     
    requisicao.onreadystatechange = function() {
        result.innerHTML = requisicao.responseText;
    };

}