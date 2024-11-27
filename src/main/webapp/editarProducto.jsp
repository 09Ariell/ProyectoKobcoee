<%-- 
    Document   : detalleProducto
    Created on : 23-11-2024, 5:23:50 p. m.
    Author     : tobar
--%>

<%@page import="logica.Ropa, logica.RopaManager" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/componentes/headerContent.jsp" %>
<link rel=“stylesheet” href="css/styles.css">
<header>
    <h1 id="nombre">KOBCOEE</h1>
</header>
<%@ include file="/componentes/header.jsp" %>
<body id="editar-producto">
    <%
        String idStr = request.getParameter("id");
        Ropa producto = null;

        if (idStr != null && !idStr.isEmpty()) {
            try {
                int productoId = Integer.parseInt(idStr);
                producto = RopaManager.getProductoById(productoId);
            } catch (NumberFormatException e) {
                out.println("Error: El ID proporcionado no es un número válido.");
            }
        } else {
            out.println("Error: No se ha proporcionado un ID de producto.");
        }
    %>
    <% if (producto != null) { %>
        <form action="EditarProductoServlet" method="post">
            <input type="hidden" name="id" value="<%= producto.getId() %>">

            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" value="<%= producto.getNombre() %>" required><br>
            </div>

            <div class="form-group">
                <label for="descripcion">Descripción:</label>
                <input type="text" name="descripcion" value="<%= producto.getDescripcion() %>" required><br>
            </div>

            <div class="form-group">
                <label for="precio">Precio:</label>
                <input type="number" name="precio" value="<%= producto.getPrecio() %>" required><br>
            </div>

            <div class="form-group">
                <label for="imagen">Imagen (URL):</label>
                <input type="url" name="imagen" value="<%= producto.getImagen() %>" required><br>
            </div>

            <div class="form-group">
                <label for="talla">Talla:</label>
                <input type="text" name="talla" value="<%= producto.getTalla() %>" required><br>
            </div>

            <div class="form-group">
                <label for="color">Color:</label>
                <input type="text" name="color" value="<%= producto.getColor() %>" required><br>
            </div>

            <div class="form-group">
                <label for="tipo">Tipo:</label>
                <input type="text" name="tipo" value="<%= producto.getTipo() %>" required><br>
            </div>

            <div class="form-group">
                <label for="stock">Stock:</label>
                <input type="number" name="stock" value="<%= producto.getStock() %>" required><br>
            </div>

            <input type="submit" value="Actualizar Producto"> 
        </form>
    <% } else { %>
        <p>Producto no encontrado.</p>
    <% } %>
    <%carrito.getRopas().clear();%>
</body>
<%@ include file="/componentes/footer.jsp" %>
