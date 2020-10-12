
<head>
    <title>Admin Usuario</title>
   
</head>

<body>


    <form action="" method="" name="">
        <div class="container contenidoT">
            <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->

            <div>
                <!--Para crear un contenedor-->

            </div>

            <!--Pará mostrar una línea horizontal en el documento-->
            <div>
                <h1 class="tituloa form-group">Gestionar Inasistencia</h1>
                <!--Pará establecer título principal -->
            </div>

            <!--Pará mostrar una línea horizontal en el documento-->

            <div class="form-group">
                <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->
                <label>Código de Inasistencia</label>
                <!--Pará dar nombre al campo de texto -->

                <input name="Código de Inasistencia" class="form-control" type="text" placeholder="Ingrese Código"
                    required autocomplete="on" pattern="[0-9]{1,20}" title="ingrese solo numeros" />
                <!--Pará crear un campo de texto -->
            </div>

            <div class="form-group">
                <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->
                <label>Seleccione la Fecha de Inasistencia</label>
                <!--Pará dar nombre al campo de texto -->

                <input name="Fecha de Inasistencia" class="form-control" type="date" required
                    title="ingrese solo numeros" />
                <!--Pará crear un campo de texto -->
            </div>

            <div class="form-group">
                <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->
                <label>Excusa de la Inasistencia</label>
                <!--Pará dar nombre al campo de texto -->

                <textarea name="Excusa de la Inasistencia" class="form-control" placeholder="--Escriba aqui la Excusa--"
                    required></textarea>
                <!--Para crear un are de texto -->
            </div>




            <!--Botones-->
            <div class="form-group" role="group" aria-label="Basic example" id="botones">
                <!--Pará crear un contenedor adaptable con los estilos de bootstrap-->
                <input type="submit" value="Asignar Estudiante" id="Asignar Estudiante" class="boton btn btn-info" />
                <!--Pará crear un botón con estilo bootstrap-->
                <input type="submit" value="Asignar Curso" id="Asignar curso" class="boton btn btn-info" />
                <!--Pará crear un botón con estilo bootstrap-->
                <input type="submit" value="Crear Seguimiento" id="Crear Seguimiento" class="boton btn btn-info" />
                <!--Pará crear un botón con estilo bootstrap-->

            </div>
        </div>

    </form>




</body>