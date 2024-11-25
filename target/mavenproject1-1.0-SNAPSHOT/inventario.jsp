<%-- 
    Document   : inventario
    Created on : 23-11-2024, 12:54:30 p. m.
    Author     : tobar
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/componentes/headerContent.jsp" %>

<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>
<%@ include file="/componentes/header.jsp" %>

<div class="clearfix"></div>

<section id="content">
    <h1 class="tituloAr">Inventario</h1>
    <div class="inventory">
        <div class="product-card">
            <img src="img/poleronesmexicanos.png" alt="Polerones Mexicanos" class="product-img">
            <div class="product-info">
                <h3>Polerones Mexicanos</h3>
                <p>Polerones mexicanos de excelente calidad</p>
                <span>Disponibles en todas las tallas</span>
            </div>
        </div>
        <div class="product-card">
            <img src="img/polerones.png" alt="Polerones" class="product-img">
            <div class="product-info">
                <h3>Polerones</h3>
                <p>Polerones de todas las tallas y colores</p>
                <span>Diseños exclusivos</span>
            </div>
        </div>
        <div class="product-card">
            <img src="img/image.png" alt="Ropa Deportiva" class="product-img">
            <div class="product-info">
                <h3>Ropa Deportiva</h3>
                <p>Ropa deportiva de alta calidad</p>
                <span>Amplia variedad y estilos</span>
            </div>
        </div>
    </div>
</section>

<%@ include file="/componentes/aside.jsp" %>

<div class="clearfix"></div>

<%@ include file="/componentes/footer.jsp" %>
<%@ include file="/componentes/footerContent.jsp" %>
