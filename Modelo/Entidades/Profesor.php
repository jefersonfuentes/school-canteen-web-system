<?php
class Profesor
{
	private $id;
	private $nombre;
	private $primerApellido;
	private $segundoApellido;
	private $cedula;
	private $comidas;
	private $estado;
	private $contrasena;
	private $correo;
	private $perfil;
  private $fotoPerfil;

	public function getId()
	{
		return $this->id;
	}

	public function setId($id)
	{
		$this->id = $id;
	}

	public function getPerfil(){
		return $this->perfil;
	}

	public function setPerfil($perfil){
		$this->perfil = $perfil;
	}

	public function getNombre()
	{
		return $this->nombre;
	}

	public function setNombre($nombre)
	{
		$this->nombre = $nombre;
	}

	public function getPrimerApellido()
	{
		return $this->primerApellido;
	}

	public function setPrimerApellido($primerApellido)
	{
		$this->primerApellido = $primerApellido;
	}

	public function getSegundoApellido()
	{
		return $this->segundoApellido;
	}

	public function setSegundoApellido($segundoApellido)
	{
		$this->segundoApellido = $segundoApellido;
	}

	public function getCedula()
	{
		return $this->cedula;
	}

	public function setCedula($cedula)
	{
		$this->cedula = $cedula;
	}

	public function getComidas()
	{
		return $this->comidas;
	}

	public function setComidas($comidas)
	{
		$this->comidas = $comidas;
	}

	public function getEstado()
	{
		return $this->estado;
	}

	public function setEstado($estado)
	{
		$this->estado = $estado;
	}


	public function getCorreo()
	{
		return $this->correo;
	}

	public function setCorreo($correo)
	{
		$this->correo = $correo;
	}

	public function getContrasena()
	{
		return $this->contrasena;
	}

	public function setContrasena($contrasena)
	{
		$this->contrasena = $contrasena;
	}

	public function getFotoPerfil()
	{
		return $this->fotoPerfil;
	}

	public function setFotoPerfil($fotoPerfil)
	{
		$this->fotoPerfil = $fotoPerfil;
	}
}
