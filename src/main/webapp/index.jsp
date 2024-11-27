<%-- 
    Document   : index
    Created on : 23-11-2024, 12:53:22 p. m.
    Author     : tobar
--%>
<%@page import="logica.RopaManager"%>
<%@page import="java.util.List"%>
<%@page import="logica.Ropa"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/componentes/headerContent.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<link rel=“stylesheet” href=“css/styles.css”>



<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>
<%@ include file="/componentes/header.jsp" %>

<div class="clearfix"></div>



<section id="content">
    <div class="gallery">
        <%
            int productosPorPagina = 6;
            int totalProductos = RopaManager.getProductos().size();

            int paginaActual = 1;
            String paginaParam = request.getParameter("pagina");
            if (paginaParam != null) {
                paginaActual = Integer.parseInt(paginaParam);
            }

            int startIndex = (paginaActual - 1) * productosPorPagina;
            int endIndex = Math.min(startIndex + productosPorPagina, totalProductos);

            List<Ropa> productosPagina = RopaManager.getProductos().subList(startIndex, endIndex);

            for (Ropa ropa : productosPagina) {
        %>
        <div class="product-card">
            <a href="detalleProducto.jsp?id=<%= ropa.getId() %>">
                <img src="<%= ropa.getImagen() %>" alt="<%= ropa.getNombre() %>" class="product-img"/>
                <div class="product-info">
                    <h3><%= ropa.getNombre() %></h3>
                    <p><%= ropa.getDescripcion() %></p>
                    <span><%= ropa.getTalla() %></span>
                    <p><%= ropa.getPrecio()+"$"%></p>
                </div>
            </a>
        </div>
        <% } %>
    </div>

    <div class="pagination">
        <%
            int totalPaginas = (int) Math.ceil((double) totalProductos / productosPorPagina);
            for (int i = 1; i <= totalPaginas; i++) {
        %>
        <a href="index.jsp?pagina=<%= i %>" class="<%= (i == paginaActual) ? "active" : "" %>"><%= i %></a>
        <% } %>
    </div>
</section>
<div class="clearfix"></div>
<%@ include file="/componentes/footer.jsp" %>
<%@ include file="/componentes/footerContent.jsp" %>

