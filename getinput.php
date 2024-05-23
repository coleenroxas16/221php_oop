<?php

if (isset($_POST['submit'])) 
{
    $user = $_POST["user_name"];
    $pass = $_POST["user_pass"];

    echo $user . ' ' . $pass ;

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="POST">
        <input type="text" name="user_name">
        <input type="text" name="user_pass">
        <input type="submit" name="submit">
    </form>

</body>
</html>