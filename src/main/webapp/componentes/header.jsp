<%-- 
    Document   : header
    Created on : 23-11-2024, 1:08:39 p. m.
    Author     : tobar
--%>
<%@page import="logica.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User currentUser = null;
    String role="";
    if(session.getAttribute("currentUser")!=null){
        currentUser = (User) session.getAttribute("currentUser");
        role = currentUser.getRole();
    }
%>
<nav>
    <ul>
        <li><a href="index.jsp">Inicio</a></li>
        <li><a href="https://www.instagram.com/kobcoee_/">Instagram</a></li>
        <li><a href="mailto:coee1x1490@gmail.com">Correo electrónico</a></li>
        <li><a href="acercaDe.jsp">Acerca de</a></li>
        <% if("admin".equals(role)){ %>
             <li><a href="inventario.jsp">Inventario</a></li>
        <% } %>
        <% if(currentUser==null){ %>
             <li><a href="login.jsp">Iniciar Sesion</a></li>
        <% } %>
        <% if (currentUser != null) { %>
                <li><a href="LogoutServlet">Cerrar Sesión</a></li>
        <% } %>
    </ul>
</nav>

