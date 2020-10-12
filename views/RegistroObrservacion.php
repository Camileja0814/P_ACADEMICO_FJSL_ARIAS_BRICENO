<?php 
session_start();
if (isset($_SESSION['Admin'])){
    $sesion = $_SESSION['Admin'];
}elseif (isset($_SESSION['Profe'])){
    $sesion = $_SESSION['Profe'];
}elseif (isset($_SESSION['Estudiante'])){
    $sesion = $_SESSION['Estudiante'];
}
if(!isset($sesion)){
    header("location: ../index.php");
 
}

?>
<?php
include "./modules/plantilla.php"
?>
 <script src="assets/js/botonmenu.js"></script>
<head>
 <title>Admin Usuario</title>
 <link rel="stylesheet" href="assets/css/formularios.css">
 </head>
 <body >
    <div class="formularios">
  
    <form action="recibe.php" method="post"  > 
    
    <div class="container">
          <div>
            
        </div>
                <div class="form-group">
            <!--Pará mostrar una línea horizontal en el documento-->
            <!--Pará mostrar una línea horizontal en el documento-->
            <div>
                <h1 class="tituloa form-group">Resgistro Observacion </h1>
                <!--Pará establecer título principal -->
            </div>
            <!--para crear contenedor-->
            <!--Pará mostrar una línea horizontal en el documento-->
                     <div>
                 <label id="Label1" runat="server" Text="Label">ID Resgistro Observacion:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Administrador" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
            </div>
        
            <div>
                 <label id="Label1" runat="server" Text="Label">ID Observacion:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Administrador" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
            </div>
            <div>
                 <label id="Label1" runat="server" Text="Label">ID Usuario:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Administrador" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
            </div>
            <div>
                 <label id="Label1" runat="server" Text="Label">Descargos Usuario:</label><!--Pará dar nombre al campo de texto -->

            <input  name="Nombre Administrador" id="TextBox4" runat="server" class="form-control" type="text" placeholder="Ingrese Nombre" required autocomplete="on" pattern="[a-z]{1,20}"
                    title="ingrese solo letras" /><!--Pará crear un campo de texto -->
                
                
            </div>
                    <hr>
                  <div class="form-group" role="group" aria-label="Basic example" id="botones">
           <input type="submit" value="Crear" id="Crear" class="boton btn btn-info" /> <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->
            <input type="submit" value="Modoficar" id="Modificar" class="boton btn btn-info" /> <!--Pará crear un botón con estilo bootstrap-->
              <input type="submit" value="Consultar" id="Consultar" class="boton btn btn-info" /> <!--Pará crear un botón con estilo bootstrap-->
            
              
        </div>  
                </div>
      </div>
      
    </form>


    </div>
   
 </body>