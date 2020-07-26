<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>commentaires_post</title>
</head>
<body>
<?php echo 'lid du billet est le ' . $_POST['id_billet']; ?>

    <?php 
        if (empty($_POST['pseudo']) OR empty($_POST['message']))
		{   
            echo 'Un des champs du formulaire est vide. <br/>';
            echo 'Pour retrourner à la page d\'accueil <a href="commentaires.php">Cliquez ICI</a>';
		}
		else
		{
			try
            {
                $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', 'root', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)); 
            }
            catch(Exception $e)
            {
                die('Erreur : '.$e->getMessage());
            }

            $req = $bdd->prepare('INSERT INTO commentaire(id_billet, auteur, commentaire, date_commentaire) VALUES(:id_billet, :auteur, :commentaire, NOW())');
            
            $req->execute(array(
                'id_billet' => $_POST['id_billet'],
                'auteur' => $_POST['pseudo'],
                'commentaire' => $_POST['message']
                ));

                header('Location:commentaires.php?page=1&id_billet=' . $_POST['id_billet']);
        }
	?>

</body>
</html>