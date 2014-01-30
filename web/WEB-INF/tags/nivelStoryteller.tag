<%-- 
    Document   : nivelStoryteller
    Created on : 08/11/2013, 16:23:07
    Author     : yurifw
--%>

<%@tag description="bolinhas de nivel para habilidade e atributo" pageEncoding="UTF-8"%>



<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="id" required="true"%>
<%@attribute name="type" required="true"%>
<%@attribute name="marginLeft" required="false" %>
<%@attribute name="marginTop" required="false"%>

<%!
    public String geraTag(String id, String type, String marginLeft, String marginTop) {
        String tag = "";
        String src="";
        if(type.equals("Habilidade")) src="imagens/ficha-vampiro/nvl00.gif";
        if(type.equals("Atributo")) src="imagens/ficha-vampiro/nvl01.gif";
        if(marginTop==null) marginTop="0px";
        if(marginLeft==null) marginLeft="0px";
        
        tag="<img class=\"@type\" src=\"@src\" id=\"@id\" alt=\"@alt\" "
                + "onmousedown=\"alteraImagem('@id',event);\" "
                + "style=\"margin-left: @marginLeft; margin-top: @marginTop\">";
        tag=tag.replace("@type", type);
        tag=tag.replace("@src", src);
        tag=tag.replaceAll("@id", id);
        tag=tag.replaceAll("@alt", id);
        tag=tag.replace("@marginLeft", marginLeft);
        tag=tag.replace("@marginTop", marginTop);
        
        return tag;
    }
%>
<%= geraTag(id, type, marginLeft, marginTop)%>
