<%-- 
    Document   : nivelhumanidade
    Created on : 14/11/2013, 17:21:26
    Author     : yurifw
--%>

<%@tag description="bolinhas de nivel mais separadas para serem usadas em Humanidade e em Força de vontade"
       pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="id" required="true"%>
<%@attribute name="marginLeft" required="false" %>
<%@attribute name="marginTop" required="false"%>

<%-- any content can be specified here e.g.: --%>

<%!
    public String geraTag(String id, String marginLeft, String marginTop) {
        String tag = "";
        String src="imagens/ficha-vampiro/nvl00.png";
        if(marginTop==null) marginTop="0px";
        if(marginLeft==null) marginLeft="0px";
        
        tag="<img class=\"@type\" src=\"@src\" id=\"@id\" "
                + "onmousedown=\"alteraImagem('@id',event);\" "
                + "style=\"margin-left: @marginLeft; margin-top: @marginTop\">";
        tag=tag.replace("@src", src);
        tag=tag.replaceAll("@id", id);
        tag=tag.replace("@marginLeft", marginLeft);
        tag=tag.replace("@marginTop", marginTop);
        
        return tag;
    }
%>
<%= geraTag(id, marginLeft, marginTop)%>
