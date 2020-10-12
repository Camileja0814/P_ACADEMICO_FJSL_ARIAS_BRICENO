
<?php
//Creamos el modelo para el formulario de Cargo
class ObservacionModel{
//Declaramos los atributos del model que son iguales a los campos de cargo en la base de datos
public $id_Observacion;
public $fecha_Observacion;
public $tipo_Falta;
public $descripcion_Observacion;


    public $CNX;




    public function __construct(){
        try {
            $this->CNX= Conexion::conectar();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function listar_Observacion(){
        try {
            $query= "SELECT * from Observacion" ;
            $stm = $this->CNX->prepare($query);
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }

    public function Obtener($id_Observacion)
	{
		try 
		{
            $query= "SELECT * FROM Observacion WHERE id_Observacion = ?";
            $stm = $this->CNX->prepare($query);
			$stm->execute(array($id_Observacion));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

    public function nuevo_Observacion(ObservacionModel $data){
        try {
            $query= "INSERT INTO observacion VALUES ('',?,?,?)";
            $stm = $this->CNX->prepare($query);
            $stm->execute(array($data->fecha_Observacion,
                                $data->tipo_Falta,
                                $data->descripcion_Observacion      
                                  ));
            //return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }
    
    public function actualizar_Observacion( $data){
        try {
            $query= "UPDATE Observacion SET
                        fecha_Observacion=?,
                        tipo_Falta=?,
                        descripcion_Observacion=?


                    where id_Observacion=?";
            $stm = $this->CNX->prepare($query);
            $stm->execute(array(
                                $data->fecha_Observacion,
                                $data->tipo_Falta,
                                $data->descripcion_Observacion,
                                $data->id_Observacion));
            //return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e){
            die($e ->getMessage());
        }
    }

    public function eliminar_Observacion($id_Observacion)
	{
		try 
		{
            $query= "DELETE  FROM observacion  WHERE id_Observacion = ?";
            $stm = $this->CNX->prepare($query);
					          

            $stm->execute(array($id_Observacion));

		} catch (Exception $e){
            die($e ->getMessage());
        }
    
        
	}

}