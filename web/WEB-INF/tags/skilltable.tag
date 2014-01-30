<%@tag description="tabela editavel com os campos nome e nivel" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="qtdLinhas" required="true" %>
<%@attribute name="nome" required="true" %>

<%-- any content can be specified here e.g.: --%>

<%@taglib tagdir="/WEB-INF/tags/" prefix="storyteller"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="css/skilltable.css" media="all">

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
                <td class="editavel"></td>
                <td class="naoeditavel"><storyteller:nivelStoryteller type="Habilidade" id="nvllLabia${i}${nome}" marginLeft="0px" marginTop="0px" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>