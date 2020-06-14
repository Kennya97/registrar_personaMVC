<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar_registro</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <% 
            String dui = (String) request.getAttribute("DUI");
            String nombre = (String) request.getAttribute("NOMBRE");
            String apellido = (String) request.getAttribute("APELLIDOS");
            String duimodi = (String) request.getAttribute("DUIMODI");
        %>
        
        <div class="container pt-5 mr5 ml-5">
            <div class="row justify-content-center">
                <div class="col-sm-12 col-md-4">
                    <h1 class="alert-primary">Editar Regitro</h1>
        
             <form action="modificar.do" method="POST">
                <div class="form-group">
                    <input type="hidden" name="duimodi" value="<%= duimodi%>">
                  <label for="dui">DUI </label>
                  <input type="text" class="form-control" name="txtDui" value="<%= duimodi%>">
                </div>
                <div class="form-group">
                  <label for="nombre">Nombres </label>
                  <input type="text" class="form-control" name="txtNombres" value="<%=nombre%>">
                </div>
                <div class="form-group">
                  <label for="apellido">Apellidos </label>
                  <input type="text" class="form-control" name="txtApellidos" value="<%=apellido%>">
                </div>
                <input class="btn btn-success" type="submit" name="accion" value="Actualizar">
            </form>
                 <a class="btn btn-primary mt-3" href="mostrar.do" role="button">Volver a Registros</a>
                </div>
            </div>
        </div>
    </body>
</html>