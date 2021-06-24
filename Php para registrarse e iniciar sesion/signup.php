<?php
    require 'database.php';

    $mensaje = '';     

    if (!empty($_POST['email']) && !empty($_POST['contraseña'])) {
        $sql = "INSERT INTO users (email, contraseña) VALUES (:email, :contraseña)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':email',$_POST['email']);
        $contraseña = password_hash($_POST['contraseña'], PASSWORD_BCRYPT);
        $stmt->bindParam(':contraseña', $contraseña);

        if ($stmt->execute()) {
            $mensaje = 'Se ha creado un nuevo usuario exitosamente';
        } else {
            $mensaje = 'Lo siento, debe haber habido un problema al crear su cuenta';
        }

    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrate</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Roboto:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <?php require 'partials/header.php'?>

    <?php if(!empty($mensaje)): ?>
        <p><?= $mensaje ?></p>
        <?php endif; ?>



    <h1>Registrarse</h1>

    <span>o <a href="login.php">Iniciar Sesion</a></span>

    <form action="signup.php" method="post">
    <input type="text" name="email" placeholder="Ingrese su correo">
    <input type="password" name="password" placeholder="Ingrese su contrasena">
    <input type="password" name="confirm_password" placeholder="Confirma tu contrasena">
    <input type="submit" value="Enviar">
    </form>
    
</body>
</html>