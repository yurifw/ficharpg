<%-- 
    Document   : cadastrar
    Created on : 21/01/2014, 10:11:09
    Author     : yurifw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <form action="cadastrar" method="POST">
            Nome: <input ty pe="text" name="nome">
            Email: <input type="text" name="email">
            Login: <input type="text" name="login">
            Senha: <input type="text" name="senha">
            Confirme a Senha: <input type="text" name="cSenha"><br>
            <input type="submit" value="Cadastrar">
        </form>
    </body>
</html>
