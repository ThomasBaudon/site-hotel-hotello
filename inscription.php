<?php 
    require_once('./admin/Models/pdo.php');
    require_once('./admin/Models/User.php');
    require_once('./admin/Models/UserManager.php');

    $success = '';
    // $erreurs = '';

    $userManager = new UserManager($pdo);


    if(isset($_GET['action']) && $_GET['action'] == 'deconnexion'){
        // session_destroy();
        session_unset();
        header('location:index.php');
    }

    if(!empty($_POST)){

        // foreach($_POST as $key =>$valeur){
        //     $_POST[$key] = htmlspecialchars(addslashes($valeur));
        // }

        $user = new User(
            [
                'lastname' => $_POST['lastname'],
                'firstname' => $_POST['firstname'],
                'mail' => $_POST['mail'],
                'address' => $_POST['address'],
                'zipcode' => $_POST['zipcode'],
                'city' => $_POST['city'],
                'password' => $_POST['password'],
                'phone' => $_POST['phone'],
                'birthdate' => $_POST['birthdate'],
                'country' => $_POST['country']
            ]
        );

        if(isset($_POST))
        {
            $userManager->insertUser($user);
            $success = "<div class=\"alert alert-success\" role=\"alert\">Vous inscription a été prise en compte</div>";
            // var_dump($user);
            header('location:connexion.php');
        }else{
            $erreurs = $user->getErreurs(); 
        }
    }

    require_once('./inc/header.inc.php');
    require_once('./inc/top-nav.inc.php');
?>

<div class="container mt-5 mb-5">
            <div class="row justify-content-center">
                <div class="col-8">
                
                <h1 class="text-center">Inscrivez-vous</h1>

                <form action="" method="POST" class="inscription-form">
                <!-- NOM -->
                <div class="mb-3">
                    <label for="lastname" class="form-label">Votre nom</label>
                    <input type="text" class="form-control" id="lastname" name="lastname">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- PRENOM -->
                <div class="mb-3">
                    <label for="firstname" class="form-label">Votre prénom</label>
                    <input type="text" class="form-control" id="firstname" name="firstname">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- EMAIL -->
                <div class="mb-3">
                    <label for="mail" class="form-label">Votre adresse mail</label>
                    <input type="mail" class="form-control" id="mail" name="mail">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- ADRESSE -->
                <div class="mb-3">
                    <label for="address" class="form-label">Votre adresse</label>
                    <input type="text" class="form-control" id="address" name="address">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- CODE POSTAL -->
                <div class="mb-3">
                    <label for="zipcode" class="form-label">Code postal</label>
                    <input type="text" class="form-control" id="zipcode" name="zipcode">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- VILLE -->
                <div class="mb-3">
                    <label for="city" class="form-label">Ville</label>
                    <input type="text" class="form-control" id="city" name="city">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- PASSWORD -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- TELEPHONE -->
                <div class="mb-3">
                    <label for="phone" class="form-label">Numéro de téléphone :</label>
                    <input type="text" name="phone" id="phone" class="form-control">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- DATE NAISSANCE -->
                <div class="mb-3">
                    <label for="birthdate" class="form-label">Date de naissance :</label>
                    <input type="date" name="birthdate" id="birthdate" class="form-control">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                <!-- PAYS -->
                <div class="mb-3">
                    <label for="country" class="form-label">Pays :</label>
                    <input type="text" name="country" id="country" class="form-control">
                    <div id="nomHelp" class="form-text">

                    </div>
                </div>

                    <button type="submit" class="btn">S’inscrire</button>

                </form>
                
            </div>
        </div>
    </div>
    
    <section class="rdvInscription">
        <p>Si vous êtes déjà inscrit, <a href="connexion.php">vous pouvez vous connecter ici</a>.
        </p>
    </section>

<?php 
    require_once('./inc/footer.inc.php');

?>