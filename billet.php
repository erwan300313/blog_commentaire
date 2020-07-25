<div class="news">
    <h3><?php echo $donnees['titre'];?> publié le <?php echo $donnees['date'];?> </h3>
    <p>
        <?php echo $donnees['contenue'];?><br/>
        <a href="commentaires.php?id_billet=<?php echo $donnees['id'];?>">Commentaires</a>
    </p>
</div>