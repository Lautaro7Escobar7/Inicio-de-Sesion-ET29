<?php
  session_start();

  require 'database.php';

  if (isset($Sesion['user_id'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE id = :id');
    $records->bindParam(':id', $Sesion['user_id']);
    $records->execute();
    $resultados = $records->fetch(PDO::FETCH_ASSOC);

    $user = null;

    if (count($resultados) > 0) {
      $user = $resultados;
    }
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bienvenido Usuario</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>
    <?php require 'partials/header.php' ?>

    <?php if(!empty($user)): ?>
      <br> Bienvenido. <?= $user['email']; ?>
      <br>Felicitaciones se a logeado exitosamente
      <a href="logout.php">
        Cerrar Sesion
      </a>
    <?php else: ?>
      <h1>Por favor ingresa o regístrate</h1>

      <a href="login.php">Iniciar Sesion</a> o
      <a href="signup.php">Registrate</a>
    <?php endif; ?>
  </body>
</html>