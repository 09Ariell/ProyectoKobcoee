<%-- 
    Document   : detalleProducto
    Created on : 23-11-2024, 5:23:50 p. m.
    Author     : tobar
--%>

<%@page import="logica.RopaManager"%>
<%@page import="java.util.List"%>
<%@page import="logica.Ropa"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/componentes/headerContent.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>



<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>
<%@ include file="/componentes/header.jsp" %>

<div class="clearfix"></div>



<section id="content">
    <%
        String idParam = request.getParameter("id");
        int id = Integer.parseInt(idParam);
        Ropa ropa = RopaManager.getProductoById(id);
    %>
    <h2>Detalle de <%= ropa.getNombre() %></h2>
    <p><strong>Descripción:</strong> <%= ropa.getDescripcion() %></p>
    <p><strong>Tipo:</strong> <%= ropa.getTipo() %></p>
    <p><strong>Color:</strong> <%= ropa.getColor() %></p>
    <p><strong>Talla:</strong> <%= ropa.getTalla() %></p>
    <p><strong>Imagen:</strong></p>
    <img src="<%= ropa.getImagen() %>" alt="<%= ropa.getNombre() %>" width="200">
    <br>
    <a href="index.jsp">Volver al listado</a>
</section>

<%@ include file="/componentes/footer.jsp" %>

<%@ include file="/componentes/aside.jsp" %>
<div class="clearfix"></div>
<%@ include file="/componentes/footer.jsp" %>
<%@ include file="/componentes/footerContent.jsp" %>

