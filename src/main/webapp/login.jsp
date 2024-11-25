<%-- 
    Document   : login.jsp
    Created on : 23-11-2024, 2:28:07 p. m.
    Author     : tobar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Iniciar Sesión</title>
</head>
<body>
  <h1>Iniciar Sesión</h1>
  <form action="LoginServlet" method="post">
    <label for="username">Usuario:</label>
    <input type="text" id="username" name="username" required>
    <br>
    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <button type="submit">Ingresar</button>
  </form>
</body>
</html>
