/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function() {
        $("td").dblclick(function() {
            if ($(this).hasClass("editavel")) {


                var conteudoOriginal = $(this).text();

                $(this).addClass("celulaEmEdicao");
                $(this).html("<input type='text' value='" + conteudoOriginal + "' />");
                $(this).children().first().focus();

                $(this).children().first().keypress(function(e) {
                    if (e.which == 13) {
                        var novoConteudo = $(this).val();
                        $(this).parent().text(novoConteudo);
                        $(this).parent().removeClass("celulaEmEdicao");
                    }
                });

                $(this).children().first().blur(function() {
                    $(this).parent().text(conteudoOriginal);
                    $(this).parent().removeClass("celulaEmEdicao");
                });
            }
        });
    });