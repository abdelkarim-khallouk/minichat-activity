<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Index</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="style.css" />
</head>
<body>

<?php

$pseudo = empty($_POST['pseudo'])?'':$_POST['pseudo'];
$date = date('d/m/Y H:i:s');
echo $date;
?>

<h1>Minichat App!</h1>
<h2 style="text-align:center">Tapez votre message ici !</h2>

<form style="center" method="post" action="minichat_post.php">
    <p>
        Pseudo: <input name="pseudo" value="<?php echo $_GET['id'] ?>" required/><br/>
    </p>
    <p>
        Message: <input name="message" type="text" required/><br/>
    </p>
    <p>
        <input type="submit" value="Publier" name="button"/>
    </p>
</form>

    <br/>
    <h2 class="news">Les derniers messages :</h2>
    <br/>

<?php

try {

    $bdd = new PDO('mysql:host=localhost;dbname=ocrdb;charset=utf8','root','');

}catch (Exception $ex) {

    die('Connection error !!'. $ex->getMessage());
}

$res = $bdd->query('SELECT pseudo, message, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%im%ss\') AS date_creation_fr FROM minichat ORDER BY id DESC LIMIT 0, 20');

while ($data = $res->fetch()) {

    echo '<p class="news">';
    echo '['.$data['date_creation_fr']. ']';
    echo ' <strong>' . $data['pseudo'] . '</strong>';
    echo ': '.$data['message'].'<br/>';
    echo '</p>';
}

$res->closeCursor();

?>

</body>
</html>
