<%-- 
    Document   : detallesUsuario
    Created on : 27-11-2024, 5:31:53 p. m.
    Author     : tobar
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/componentes/headerContent.jsp" %> 
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<link rel="stylesheet" href="css/styles.css">
<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>

<%@ include file="/componentes/header.jsp" %>
<div class="clearfix"></div>

<section id="content">
    <% 
        if (currentUser == null) {
            response.sendRedirect("login.jsp");
        }
    %>
    <div class="user-details-container">
        <h1>Detalles de Usuario</h1>
        <div class="user-info">
            <img src="img/usuario.png" alt="Avatar del Usuario">
            <div class="info"><strong>Nombre:</strong> <%= currentUser.getName() %></div>
            <div class="info"><strong>Correo Electrónico:</strong> <%= currentUser.getEmail() %></div>
            <div class="info"><strong>Teléfono:</strong> <%= currentUser.getPhoneNumber() %></div>
            <% if(currentUser.getRole()=="admin"){%>
                <div class="info"><strong>Rol:</strong> <%= currentUser.getRole() %></div>
            <%}%>
        </div>
    </div>
</section>

<div class="clearfix"></div>
<%@ include file="/componentes/footer.jsp" %>
<%@ include file="/componentes/footerContent.jsp" %>