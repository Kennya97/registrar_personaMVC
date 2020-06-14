<%-- 
    Document   : mostrartodo
    Created on : 06-13-2020, 05:58:29 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container pt-5">
       <div class="col-md-7">
           <h1 class="alert-info">Todos los registros</h1> 
    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
    <tr>
      <th scope="col">DUI </th>
      <th scope="col">Apellidos </th>
      <th scope="col">Nombres </th>
      <th scope="col">Borrar</th>
      <th scope="col">Modificar</th>
    </tr>
  </thead>
  <tbody>
     <c:forEach var="listaTotal" items="${sessionScope.personas}">
            <tr>
                 <td><b>DUI:</b>${listaTotal.dui}</td>
                 <td><b>Apellidos:</b>${listaTotal.apellidos} </td>
                 <td><b>Nombres:</b>${listaTotal.nombres}</td>
                 <td><a class="btn btn-danger ml-4" href="eliminar.do?dui=$dui=${listaTotal.dui}"><img width="30" src="Imagenes/Eliminar.png"/>Borrar</a></td>
                 <td><a class="btn btn-success ml-4" href="modificar.do?dui=${listaTotal.dui}"><img width="30" src="Imagenes/Editar o modificar.png"/>Modificar</a></td>
            </tr>
      </c:forEach> 
  </tbody>
</table>
       <a class="btn btn-primary" href="index.jsp" role="button">Volver a inicio</a>
        </div>       
   </div>
    </body>
</html>
