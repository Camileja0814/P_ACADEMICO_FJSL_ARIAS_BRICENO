
<head>
 <title>Admin Usuario</title>
 
 </head>
 <body >
    <div class="formularios">
  
    <form action="recibe.php" method="post"  > 
    
    <div class="container">

        </div>
                <div class="form-group">
            <!--Pará mostrar una línea horizontal en el documento-->
           
            <!--Pará mostrar una línea horizontal en el documento-->
            <div>
                <h1 class="tituloa form-group">Usuario inaisitencia</h1>
                <!--Pará establecer título principal -->
            </div>
            <!--para crear contenedor-->
            
            <!--Pará mostrar una línea horizontal en el documento-->
                     <div>
                 <label id="Label1" runat="server" Text="Label">ID Inasistencia:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Inasistencia" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
            </div>
                             <div>
                 <label id="Label1" runat="server" Text="Label">ID Usuario:</label><!--Pará dar nombre al campo de texto -->

            <input name="ID Usuario" id="TextBox3" runat="server" class="form-control" type="text" placeholder="Ingrese ID del cargo" required autocomplete="on" pattern="[0-9]{1,20}"
                    title="ingrese solo numeros" /><!--Pará crear un campo de texto -->
                
                
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


    </div>
   
 </body>