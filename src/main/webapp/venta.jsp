<%-- 
    Document   : venta
    Created on : 27-11-2024, 4:28:50 p. m.
    Author     : tobar
--%>

<%@ page import="logica.Carrito, logica.Ropa, logica.RopaManager" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/componentes/headerContent.jsp" %>
<%@ include file="/componentes/header.jsp" %>

<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>

<section id="content" class="product-detail">
    <h2>Detalles de tu compra</h2>
    <%
        if (carrito == null || carrito.getRopas().isEmpty()) {
    %>
        <p>No tienes productos en tu carrito.</p>
    <%
        } else {
            double totalf = 0;  
    %>
    <table>
        <tr>
            <th>Imagen</th>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>Precio Unitario</th>
            <th>Subtotal</th>
        </tr>
        <%
            for (Map.Entry<Ropa, Integer> entry : carrito.getRopas().entrySet()) {
                Ropa ropa = entry.getKey();
                int cantidad = entry.getValue();
                double subtotal = ropa.getPrecio() * cantidad;
                totalf += subtotal;
        %>
        <tr>
            <td><img src="<%= ropa.getImagen() %>" alt="<%= ropa.getNombre() %>" width="50"></td>
            <td><%= ropa.getNombre() %></td>
            <td><%= cantidad %></td>
            <td>$<%= ropa.getPrecio() %></td>
            <td>$<%= subtotal %></td>
        </tr>
        <% } %>
    </table>
    
    <p><strong>Total: $<%= totalf %></strong></p>
    
    <form action="PagarServlet" method="post">
        <button type="submit" class="btn-add-to-cart">Pagar</button>
    </form>

    <%
        }
    %>
</section>

<%@ include file="/componentes/footer.jsp" %>
<%@ include file="/componentes/footerContent.jsp" %>