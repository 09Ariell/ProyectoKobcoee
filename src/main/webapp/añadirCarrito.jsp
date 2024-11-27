<%-- 
    Document   : añadirCarrito
    Created on : 26 nov 2024, 11:18:43
    Author     : labICI01
--%>
<%@ page import="logica.Carrito" %>
<%@ page import="logica.Ropa" %>
<%@ page import="logica.RopaManager" %>
<%
    int productoId = Integer.parseInt(request.getParameter("id"));
    Ropa ropa = RopaManager.getProductoById(productoId);
    Carrito carrito = (Carrito) session.getAttribute("carrito");
    if (carrito == null) {
        carrito = new Carrito();
        session.setAttribute("carrito", carrito); 
    }
    boolean productoAgregado = carrito.agregarProducto(ropa);
    if (!productoAgregado) {
        response.sendRedirect("detalleProducto.jsp?id=" + productoId + "&error=stock");
    } else {
        response.sendRedirect("detalleProducto.jsp?id=" + productoId);
    }
%>

