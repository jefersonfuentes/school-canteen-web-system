<?php
require_once './Core/RutaFija.php';
require_once './Core/Rutas.php';

require_once "./Controlador/IndexControlador.php";

$ruta = new Rutas();
$dir = null;
if (isset($_GET['dir'])) $dir = $_GET['dir'];

if (isset($_GET['controlador'])) {
  $controlador = $ruta->CargarControlador($_GET['controlador'], $dir);
  if (isset($_GET['accion'])) {
    if (isset($_GET['id'])) {
      $ruta->CargarAccion($controlador, $_GET['accion'], $_GET['id']);
    } else {
      $ruta->CargarAccion($controlador, $_GET['accion']);
    }
  } else {
    $ruta->CargarAccion($controlador, ACCION_PRINCIPAL);
  }
} else {
  $controlador = $ruta->CargarControlador(CONTROLADOR_PRINCIPAL, null);
  $accionTmp = ACCION_PRINCIPAL;
  $controlador->$accionTmp();
}
