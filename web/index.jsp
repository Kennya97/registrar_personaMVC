<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inicio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">      
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

</head>
<body>

    
<div class="container pt-5">
<div class="row justify-content-center">
<div class="col-md-4">
    <center>  
        <h1 class="alert-primary">REGISTRAR</h1>
    </center>
    
    <br> <br>

<form action="recibir.do" method="POST" name="formulario">
    <input placeholder="Dui" type="text" class="form-control" name="txtDui" /><br>
                 
    <input placeholder="Apellidos" type="text" class="form-control" name="txtApellidos" /><br>
 
<input placeholder="Nombres" type="text" class="form-control" name="txtNombres" /><br>
<center>
<button type="submit" class="btn btn-primary" onclick="validar(this.form)">Registrar nueva persona</button>
</center>                    
</div>
</div>
</div> 

<br>
<center>
    <a class="btn btn-success" href="mostrar.do" role="button">Verificar Registros</a>
</center>
</form>
   
    
<script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<%------Validacion del formulario del lado cliente con JavaScrip------%>
        <script>
           function validar(form){
               if(document.formulario.txtDui.value == "")
                   alert("Falta intoducir el numero de DUI");
               else{
                   if(document.formulario.txtApellidos.value == "")
                       alert("Falta intoducir el apellido");
                   else{
                       if(document.formulario.txtNombres.value == "")
                           alert("Falta intoducir el nombre");
                       else
                           form.submit();
                   }
               }
           }
        </script>

</body>
</html>