<?php 
    session_start(); // demarrage de la session
    require_once 'config.php'; // ajout connexion bdd 
    // si la session existe pas soit si l'on est pas connecté on redirige
    if(!isset($_SESSION['user'])){
        header('Location:connexionpage.php');
        die();
    }

    $req = $bdd->prepare('SELECT * FROM utilisateur WHERE token = ?');
                    $req->execute(array($_SESSION['user']));
                    $data = $req->fetch();

    $test = $data['pseudo'];
    $users = $test;
    $action = 'Deconnexion';
    $insert = $bdd->prepare('INSERT INTO logs(users, action) VALUES(:users, :action)');
    $insert->execute(array(
    'action' => $action,
    'users' => $users
    )); 

    session_destroy(); // on détruit la/les session(s), soit si vous utilisez une autre session, utilisez de préférence le unset()
    header('Location:index.php'); // On redirige
    die();