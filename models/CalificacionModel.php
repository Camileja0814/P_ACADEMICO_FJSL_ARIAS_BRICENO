

<?php
//Creamos el modelo para el formulario de AsignacionCarga
class CalificacionModel{
    //Declaramos los atributos del model que son iguales a los campos de Usuario en la base de datos
    public $id_Calificacion;
    public $notaPeriodo1_Calificacion;
    public $notaPeriodo2_Calificacion;
    public $notaPeriodo3_Calificacion;
    public $notaFinal1_Calificacion;
    public $fechaRegistro_Calificacion;
    public $id_Usuario_FKFK;

    public $CNX;

    public function __construct(){
        try {
            $this->CNX= Conexion::conectar();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function listar_Calificacion(){
        try {
            $query= "SELECT id_Calificacion,
            notaPeriodo1_Calificacion,
            notaPeriodo2_Calificacion,
            id_Usuario_FKFK,
            nombre_Usuario,
            apellido_Usuario,
            notaPeriodo3_Calificacion,
            notaFinal1_Calificacion,
            fechaRegistro_Calificacion
            from CALIFICACION
            inner join USUARIO on Usuario.id_Usuario=CALIFICACION.id_Usuario_FKFK";
            $stm = $this->CNX->prepare($query);
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }

    
    public function listar_Usuario(){
        try {
            $query= "SELECT * from Usuario where id_tipoUsuario_FK=3";
            $stm = $this->CNX->prepare($query);
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }

    public function Obtener($id_Calificacion)
	{
		try 
		{
            $query= "SELECT id_Calificacion,
            notaPeriodo1_Calificacion,
            notaPeriodo2_Calificacion,
            id_Usuario_FKFK,
            nombre_Usuario,
            apellido_Usuario,
            notaPeriodo3_Calificacion,
            notaFinal1_Calificacion,
            fechaRegistro_Calificacion
            from CALIFICACION
            inner join USUARIO on Usuario.id_Usuario=CALIFICACION.id_Usuario_FKFK
            WHERE id_Calificacion=?";
            $stm = $this->CNX->prepare($query);
			$stm->execute(array($id_Calificacion));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

    public function nuevo_Calificacion(CalificacionModel $data){
        try {
            $query= "insert into Calificacion values ('',?,?,?,?,?,?)";
            $stm = $this->CNX->prepare($query);
            $stm->execute(array(
                $data->notaPeriodo1_Calificacion,
                $data->notaPeriodo2_Calificacion,
                $data->notaPeriodo3_Calificacion,
                $data->notaFinal1_Calificacion,
                $data->fechaRegistro_Calificacion,
                $data->id_Usuario_FKFK));
            //return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }
    
    public function actualizar_Calificacion($data){
        try {
            $query= "UPDATE Calificacion SET
                        notaPeriodo1_Calificacion=?,
                        notaPeriodo2_Calificacion=?,
                        notaPeriodo3_Calificacion=?,
                        notaFinal1_Calificacion=?,
                        fechaRegistro_Calificacion=?,
                        id_Usuario_FKFK=?
                    where id_Calificacion=?";
            $stm = $this->CNX->prepare($query);
            $stm->execute(array($data->notaPeriodo1_Calificacion,
                                $data->notaPeriodo2_Calificacion,
                                $data->notaPeriodo3_Calificacion,
                                $data->notaFinal1_Calificacion,
                                $data->fechaRegistro_Calificacion,
                                $data->id_Usuario_FKFK,
                                $data->id_Calificacion
                                ));
            //return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }

    public function eliminar_Calificacion($id_Calificacion)
	{
		try 
		{
            $query= "DELETE FROM Calificacion where id_Calificacion=?";
            $stm = $this->CNX->prepare($query);
					          

            $stm->execute(array($id_Calificacion));

		} catch (Exception $e){
            die($e ->getMessage());
        }
    
        
	}

}