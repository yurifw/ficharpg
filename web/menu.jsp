<%@page import="com.ficharpg.model.Jogador"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="res/css/purecss.css">


<div>
    <ul style="list-style-type: none">
        <li class=" "><a class="botao" href="<%= request.getContextPath()%>/index.jsp">home</a></li>
        <li class=" "><a class="botao" href="<%= request.getContextPath()%>/vampiro.jsp">monte a ficha</a></li>

        <c:if test='${sessionScope.jogador != null  }'>
            <li class=" "><a class="botao" href="<%= request.getContextPath()%>/logout ">Logout</a></li>                
        </c:if>
        <c:if test='${sessionScope.jogador == null  }'>
            <li class=" "><a class="botao" href="<%= request.getContextPath()%>/jogador/cadastrar.jsp">cadastre-se</a></li>
            <li class=" "><a class="botao" href="#login-box" id='login-window'>Login</a></li>            
        </c:if>                

    </ul>
</div>

<%@include file="login_modal.jsp" %>
