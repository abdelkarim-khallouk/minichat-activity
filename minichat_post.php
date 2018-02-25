<?php
/**
 * Created by PhpStorm.
 * User: master
 * Date: 2/6/18
 * Time: 6:57 PM
 */



if(empty($_POST['pseudo']) AND empty($_POST['message'])) {

    echo 'Thank you for putting pseudo and message.';
}
else {

    // prémunir contre les failles de sécurité
    $pseudo = test_input($_POST['pseudo']);
    $message = test_input($_POST['message']);
    $date = date('Y-m-d H:i:s');


    try {

        $bdd = new PDO('mysql:host=localhost;dbname=ocrdb','root','');

    }catch (Exception $ex) {

        die('Connection error !!'. $ex->getMessage());
    }

    $res = $bdd->prepare('INSERT INTO minichat (pseudo, message, date_creation) VALUES (:pseudo, :message, :date_creation)');
    $res->execute(array(
        'pseudo' => $pseudo,
        'message' => $message,
        'date_creation' => $date
));

    $res->closeCursor();

    header("Location: minichat.php?id=$pseudo");

}

// Fonctio permet de prémunir contre les failles de sécurité
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}



?>


