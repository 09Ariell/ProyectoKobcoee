<%-- 
    Document   : detalleProducto
    Created on : 23-11-2024, 5:23:50 p. m.
    Author     : tobar
--%>

<%@page import="logica.RopaManager"%>
<%@page import="java.util.List"%>
<%@page import="logica.Ropa"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>
<%@ include file="/componentes/headerContent.jsp" %>
<%@ include file="/componentes/header.jsp" %>

<div class="clearfix"></div>


<section id="content" class="product-detail">
    <%
        String idParam = request.getParameter("id");
        int id = Integer.parseInt(idParam);
        Ropa ropa = RopaManager.getProductoById(id);
        int stockDisponible = ropa.getStock();
        String error = request.getParameter("error");
    %>
    <div class="product-detail-container">
        <div class="product-image">
            <img src="<%= ropa.getImagen() %>" alt="<%= ropa.getNombre() %>" class="detail-img">
        </div>
        <div class="product-info">
            <h2><%= ropa.getNombre() %></h2>
            <p><strong>Descripción:</strong> <%= ropa.getDescripcion() %></p>
            <p><strong>Tipo:</strong> <%= ropa.getTipo() %></p>
            <p><strong>Color:</strong> <%= ropa.getColor() %></p>
            <p><strong>Talla:</strong> <%= ropa.getTalla() %></p>
            <p><strong>Stock disponible:</strong> <%= stockDisponible %></p>
            <p><strong>Precio:</strong> <%= ropa.getPrecio()+"$" %></p>

            <% 
                if ("stock".equals(error)) {
            %>
                <p class="alert">Lo sentimos, este producto está agotado y no se puede añadir al carrito.</p>
            <% 
                }
            %>
            
            <% 
                if (session.getAttribute("currentUser") == null) {
            %>
                <p class="alert">Inicia sesión para añadir este producto al carrito.</p>
                <a href="login.jsp" class="btn-login">Iniciar sesión</a>
            <% 
                } else {
            %>
                <% 
                if (stockDisponible > 0) {
            %>
                <form action="añadirCarrito.jsp" method="post">
                    <input type="hidden" name="id" value="<%= ropa.getId() %>">
                    <button type="submit" class="btn-add-to-cart">Añadir al Carrito</button>
                </form>
            <% 
                } else {
            %>
                <p class="alert">Lo sentimos, este producto está agotado.</p>
                <button class="btn-add-to-cart" disabled>No disponible</button>
            <% 
                }
            %>
                
            <% 
                }
            %>
        </div>
    </div>

    <a href="index.jsp" class="btn-back">Volver al listado</a>
</section>

<%@ include file="/componentes/footer.jsp" %>
<%@ include file="/componentes/footerContent.jsp" %>

