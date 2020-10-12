
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/064365718b.js"></script>
    <!--Pará utilizar los iconos de fontawesome-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <!--Pará hacer referencia con bootstrap-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!--Pará utilizar los complementos de bootstrap-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <!--Pará utilizar los complementos de bootstrap-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <!--Pará utilizar los complementos de bootstrap-->
    <link href="StyleSheet1.css" rel="./css/stylesheet.css" />
    <!--Pará hacer referencia con hoja de estilos css-->
    
    
<title>Usuario Calificacion</title>
    </head>
<body>
    
  <form action="recibe.php" method="post"  > 
    
    <div class="container">
          <div>
            <div>
                <a href="Acerca.aspx" class="btn-block+.btn-block " role="button">
                    <!--Pará crear botón de regreso-->
                    <i class="fas fa-angle-left float-left"></i>
                    <!--Pará utilizar iconos -->
                </a>

                <a href="Acerca.aspx" class="btn-block+.btn-block" role="button" id="salir">
                    <!--Pará crear botón de salida-->
                    <i class="fas fa-window-close float-right"></i>
                    <!--Pará utilizar iconos -->

                </a>


            </div>
        </div>
                <div class="form-group">
            <!--Pará mostrar una línea horizontal en el documento-->
            <hr />
            <!--Pará mostrar una línea horizontal en el documento-->
            <div>
                <h1 class="form-group">Usuario Calificacion</h1>
                <!--Pará establecer título principal -->
            </div>
            <!--para crear contenedor-->
            <hr />
            <!--Pará mostrar una línea horizontal en el documento-->
                     <div>
                 <label id="Label1" runat="server" Text="Label">ID Calificacion:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Calificacion" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
            </div>
                    <div>
                 <label id="Label1" runat="server" Text="Label">ID Usuario:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Usuario" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
            </div>
                     <div>
                 <label id="Label2" runat="server" Text="Label">Fecha Registro:</label><!--Pará dar nombre al campo de texto -->

            <input  name="Fecha Registro" id="TextBox4" runat="server" class="form-control" type="date" placeholder="Ingrese Nombre" required autocomplete="on" pattern="[a-z]{1,20}"
                    title="ingrese solo letras" /><!--Pará crear un campo de texto -->
                
                
            </div>
                    
                    
              </div>
            <div class="form-group" id="botones">
                <!--Pará mostrar una línea horizontal en el documento-->
                 <input type="submit" value="Crear" id="Crear" class="boton btn btn-info" /> <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->
            <input type="submit" value="Modoficar" id="Modificar" class="boton btn btn-info" /> <!--Pará crear un botón con estilo bootstrap-->
              <input type="submit" value="Consultar" id="Consultar" class="boton btn btn-info" /> <!--Pará crear un botón con estilo bootstrap-->

            </div>


        </div>
        
      
    </form>
        <footer class="page-footer font-small indigo">

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3 bg-info text-light">
                Sena Copyright &copy; 2019
            </div>
            <!-- Copyright -->

        </footer>
        <?php include "./plantilla.php" ?>
    </body>
</html>