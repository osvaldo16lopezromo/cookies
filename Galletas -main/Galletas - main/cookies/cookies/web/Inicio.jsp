<%-- 
    Document   : Inicio
    Created on : May 19, 2024, 22:25:12 PM
    Author     : sch
--%>
<%
    String cookieName = "visitorName";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for(Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
        existeCookie= true;
        }
    }
    if(existeCookie){
        response.sendRedirect("Visitante.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <h1>Hola</h1>
        <p>Veo que es tu primera vez en el sitio</p>
        <form action="<%= getServletContext().getContextPath() %>/Inicio" method="POST">
            <P>
                Como te llamas? 
                <input type="text" name="nombre"/>
                <input type="submit" value="Responder"/>
            </P>
        </form>
    </body>
</html>
