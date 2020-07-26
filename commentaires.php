<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" />
    <title>Commentaires</title>
</head>
<body>
    <h1>Mon super blog !</h1>  
    <a href="index.php">Retour à la liste des billets</a>
    
    <?php //Connection et affichage du billet selectionner -----------------------------------------------------------------------------------------------
        if(isset($_GET['id_billet']))
        {    
            try
            {
                $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', 'root', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            }
            catch(Exception $e)
            {
                die('Erreur : '.$e->getMessage());
            }

            $reponse = $bdd->prepare('SELECT id, titre, contenue, DATE_FORMAT(date_creation, "%d/%m/%y à %Hh%i") AS date FROM billets WHERE id = ? ');
            $reponse->execute(array($_GET['id_billet']));

            while ($donnees = $reponse->fetch())
            {
                include("billet.php");
            }
                $reponse->closeCursor();
            ?>

            <?php //Connection et affichage du commentaire correspondant au commentaire selectionner ----------------------------------------------------------------
                try
                {
                    $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', 'root', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                }
                catch(Exception $e)
                {
                    die('Erreur : '.$e->getMessage());
                }

                $reponse = $bdd->prepare('SELECT id_billet, auteur, commentaire, DATE_FORMAT(date_commentaire, "%d/%m/%y à %Hh%i") AS date FROM commentaire WHERE id_billet = ? ORDER BY date_commentaire DESC LIMIT 0,5');
                $reponse->execute(array($_GET['id_billet']));

                echo '<h2>Commentaires</h2>';
                
                while ($donnees = $reponse->fetch())
                {
            ?>
                <div class="commentaire">
                    <p>
                        <?php echo $donnees['auteur'];?> le <?php echo $donnees['date'] ;?> <br/>
                        <?php echo $donnees['commentaire']; ?>
                    </p>
                </div>
            <?php
                }
                $reponse->closeCursor();
            
        }
        else
        {
            echo 'il y à un probleme veuillez revenir à la page précedente.';
        }
        ?>

    <p><strong>Page commentaire : </strong>
        <a href="commentaires.php?page=1&amp;id_billet=<?php echo $_GET['id_billet'];?>">1</a>
        <a href="commentaires.php?page=2&amp;id_billet=<?php echo $_GET['id_billet'];?>">2</a>
        <a href="commentaires.php?page=3&amp;id_billet=<?php echo $_GET['id_billet'];?>">3</a>
        <a href="commentaires.php?page=4&amp;id_billet=<?php echo $_GET['id_billet'];?>">4</a>    
    </p>

    <h2>Ajouter un commentaire.</h2>
        <form method="post" action="commentaires_post.php">
            <p>
                <input type="text" name="pseudo" placeholder="Votre pseudo"/><br/>
                <textarea name="message" rows="8" cols="45" placeholder="Votre commetaire ici."></textarea><br/>
                <input type="hidden" name="id_billet" value=<?php echo $_GET['id_billet'];?> />
                <input type="submit" value="Valider" />
            </p>
        </form>

</body>
</html>