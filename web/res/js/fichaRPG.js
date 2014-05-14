/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function alteraImagem(id, event) {
    var imagem = document.getElementById(id);
    if (event.which === 1) {
        var nivelNovo=getNivel(imagem.src)+1;
        imagem.src=setNivel(imagem.src,nivelNovo);
    }
    if (event.which === 3) {
        var nivelNovo=getNivel(imagem.src)-1;
        imagem.src=setNivel(imagem.src,nivelNovo);
    }
}
function getNivel(caminho){
    var string = caminho.toString();
    var nivel = caminho.slice((string.lastIndexOf(".")-2),string.lastIndexOf("."));
    return parseInt(nivel);
}

function setNivel(caminho, novoNivel){
    var extensao= (caminho.substring(caminho.lastIndexOf("."))).toLowerCase();
    var nivel = getNivel(caminho);
    var nomeImagem;
    var novaImagem;
    if (novoNivel<0){
        novoNivel=0;
    }
    if (novoNivel>10){
        novoNivel=10;
    }
    if (nivel>=0 && nivel<=9){
        nomeImagem= "nvl0"+nivel+""+extensao;
    } else if (nivel===10) {
        nomeImagem = "nvl10"+extensao;
    }
    
    if (novoNivel>=0 && novoNivel<=9){
        novaImagem="nvl0"+novoNivel+""+extensao;
    } else {
        novaImagem="nvl10"+""+extensao;
    }
    var novoCaminho = caminho.replace(nomeImagem,novaImagem);
    return novoCaminho;
}