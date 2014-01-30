<%@tag description="tabela editavel com os campos nome e nivel, mas sem bolinhas.
       Usada para qualidades e defeitos" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="qtdLinhas" required="true" %>
<%@attribute name="nome" required="true" %>

<%-- any content can be specified here e.g.: --%>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<%@taglib tagdir="/WEB-INF/tags/" prefix="storyteller"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<script>
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
</script>


<table class="tabelaSkill">
    <thead>
        <tr>
            <th>Nome</th>
            <th>Nivel</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="i" begin="0" end="${qtdLinhas}">
            <tr>
                <td class="editavel" style="height: 22px"> </td>
                <td class="editavel"> </td>
            </tr>
        </c:forEach>
    </tbody>
</table>