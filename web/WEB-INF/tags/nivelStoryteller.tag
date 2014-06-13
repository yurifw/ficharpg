<%-- 
    Document   : nivelStoryteller
    Created on : 08/11/2013, 16:23:07
    Author     : yurifw
--%>

<%@tag description="bolinhas de nivel para habilidade e atributo" pageEncoding="UTF-8"%>



<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="campo" required="true"%>
<%@attribute name="id" required="true"%>
<%@attribute name="type" required="true"%>

<%!
    public String geraTag(String campo, String id, String type) {
        String tag = "";
        String src="";
        if(type.equals("Habilidade")) src="res/imagens/ficha-vampiro/nvl00.gif";
        if(type.equals("Atributo")) src="res/imagens/ficha-vampiro/nvl01.gif";
        tag="<div class=\"linha\">";
        tag+=campo;
        tag+="</div>";
        tag+="<div style=\"float:right\">";
        tag+="<img class=\"@type\" src=\"@src\" id=\"@id\" alt=\"@alt\" "
                + "onmousedown=\"alteraImagem('@id',event);\" >";
        tag=tag.replace("@type", type);
        tag=tag.replace("@src", src);
        tag=tag.replaceAll("@id", id);
        tag=tag.replaceAll("@alt", id);
        tag+="</div>";
        return tag;
//        return "<img class=\"Atributo\" src=\"res/imagens/ficha-vampiro/nvl01.gif\" id=\"nvlForca\" alt=\"nvlForca\" onmousedown=\"alteraImagem('nvlForca',event);\" style=\"margin-left: 225px; margin-top:  82px\">";
    }
%>
<%= geraTag(campo,id, type)%>
