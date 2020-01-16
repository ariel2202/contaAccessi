<!DOCTYPE html>
<html>
    <body>

    <form method="POST" action="">
    nome  <input type="text" name="nome">
    <input type="submit" name="invio">
    <a href="chiudiSessione.php">chiudi sessione</a>
    </form>
</body>

<?php


    session_start();
    if(isset($_POST['invio']))
    {

    
        $_SESSION['nome'] = $_POST['nome'];
    
    if(!isset($_SESSION['cont']))
    {
        $_SESSION['cont'] = 0;
        echo "benvenuto " . $_SESSION['nome'];
    }
    else
    {
        $_SESSION['cont']++;
        
        echo "bentornato " .  $_SESSION['nome'] ." , è la ".$_SESSION['cont'] . " volta che visiti questa pagina";
    }

}
?>
</html>


