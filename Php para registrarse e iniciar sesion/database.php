<?php
    $Servidor = 'localhost';
    $Nombre = 'root';
    $Contraseña = '';
    $database = 'loginphp_database';

    try {
        $conn = new PDO("mysql:host=$server;dbname=$database;",$Nombre, $Contraseña);
    } catch (PDOException $e) {     
        die('Connected failed: '.$e->getMessage());
    }

?>