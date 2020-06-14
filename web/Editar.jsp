<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String dui = (String) request.getAttribute("DUI");
            String nombre = (String) request.getAttribute("NOMBRE");
            String apellido = (String) request.getAttribute("APELLIDOS");
            String duimodi = (String) request.getAttribute("DUIMODI");
        %>
        <h1>Editar</h1>
        
        <form action="modificar.do" method="POST">
            <input type="hidden" name="duimodi" value="<%= duimodi%>">
            Dui <input type="text" name="txtDui" value="<%=dui%>"><br>
            Nombre <input type="text" name="txtNombres" value="<%=nombre%>"><br>
            Apellido <input type="text" name="txtApellidos" value="<%=apellido%>"><br>
            <input type="submit" name="accion" value="actualizar">
        </form>
            <a href="index.jsp">Volver al inicio</a>
    </body>
</html>