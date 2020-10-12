<section class="full-box cover dashboard-sideBar">
		<div class="full-box dashboard-sideBar-bg btn-menu-dashboard"></div>
		<div class="full-box dashboard-sideBar-ct">
		<div class="page-wrapper chiller-theme toggled">

<nav id="sidebar" class="sidebar-wrapper">
  <div class="sidebar-content">
	<div class="sidebar-brand">
	  
	 
	</div>

	<!-- sidebar-search  -->
	<div class="sidebar-menu">
	  <ul>
		<li class="header-menu">
		  <span>Menú</span>
		</li>
		<li class="sidebar-dropdown">
		  <a href="#">
			<i class="fa fa-users"></i>
			<span>Usuarios</span>

		  </a>
		  <div class="sidebar-submenu">
			<ul>
			
			<?php 
			 	if ($sesion == 'P') {
					 echo "
					 <li>
				<a href='?c=Admin&a=Index'>Gestion Administrador</a>
			  </li>
			  <li>
				<a href='?c=Profesor&a=Index'>Gestion Profesor</a>
			  </li>
			  <li>
				<a href='?c=Estudiante&a=Index'>Gestion Estudiante</a>
			  </li>
					 ";
				 }else{}
				 if ($sesion == 'E') {
					echo "<li>
					<a href='?c=Estudiante&a=Index'>Gestion Estudiante</a>
				  </li>";
				}else{}
				if ($sesion == 'A') {
					echo "
					<li>
				<a href='?c=Admin&a=Index'>Gestion Administrador</a>
			  </li>
			  <li>
				<a href='?c=Profesor&a=Index'>Gestion Profesor</a>
			  </li>
			  <li>
				<a href='?c=Estudiante&a=Index'>Gestion Estudiante</a>
			  </li>
					<li>
					<a href='?c=Usuario&a=Index'>Lista Usuarios</a>
				  </li>";
				}else{}

			?>
			</ul>
		  </div>
		</li>
		

		<li >
		  <a href="?c=Observacion&a=Index">
			<i class="fas fa-tasks"></i>
			<span>Observacion</span>

		  </a>
		  
		</li>

	  
		<li>
		  <a href="?c=Inasistencia&a=Index">
		  <i class="far fa-calendar-times"></i>
			<span>Inasistencias</span>
		  </a>
		</li>
		<li>
		  <a href="?c=Calificacion&a=Index">
		  <i class="fas fa-edit"></i>
			<span>Calificaciones</span>
		  </a>
		</li>
		<li class="sidebar-dropdown">
		  <a href="#">
		  <i class="fas fa-chalkboard"></i>
			<span>Asignación Carga</span>
		  </a>
		  <div class="sidebar-submenu">
			<ul>
			  <li>
				<a  href="?c=AsignacionCarga&a=Index">Asignación </a>
			  </li>
			  <li>
				<a href="?c=Materia&a=Index">Materia</a>
			  </li>
			
			</ul>
		  </div>
		</li>
		

		<li class="sidebar-dropdown">
		  <a href="#">
		  <i class="fas fa-book"></i>
			<span>Seguimiento Curso</span>

		  </a>
		  <div class="sidebar-submenu">
			<ul>
			  <li>
				<a  href="?c=Curso&a=Index">Curso</a>
			  </li>
			  <li>
				<a href="?c=SeguimientoCurso&a=Index">Seguimiento</a>
			  </li>
			  <li>
				<a href="?c=Salon&a=Index">Salon</a>
			  </li>
			</ul>
		  </div>
		</li>
		<li class="sidebar-dropdown">
		  <a href="#">
			<i class="fa fa-user-plus"></i>
			<span>Otros</span>

		  </a>
		  <div class="sidebar-submenu">
			<ul>
			
			  <li>
				<a href="?c=Cargo&a=Index">Cargo</a>
			  </li>
			  <li>
				<a href="?c=Especialidad&a=Index">Especialidad</a>
			  </li>
			  <li>
				<a href="?c=TipoUsuario&a=Index">Tipo Usuario</a>
			  </li>

			</ul>
		  </div>
		</li>
		
	  </ul>
	</div>
	
	<!-- sidebar-menu  -->
  </div>
  <!-- sidebar-content  -->
  <div class="sidebar-footer">
	<a href="./models/salir.php">
	  <i class="fa fa-power-off"></i>
	</a>
  </div>

</nav>

<!-- page-wrapper -->
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/esm/popper.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.js'></script>
<script src="<?php echo SERVERURL; ?>assets/js/script_Lateral.js"></script>

		</div>
	</section>