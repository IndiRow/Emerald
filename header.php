<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Emerald</title>
</head>
<body  style="background: linear-gradient(50deg, #f3c680, #a1e3e2);">
<div class="logo" style="margin-left: 45%;">
      <a href="index.php"><img src="img/logo1.png" class="graficlogo" alt="logo" style="width: 150px;"></a>
    </div>
    <nav>
        <div class="header-main">
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="shop.php">Shop</a></li>
                <li><a href="card.php">Card Link</a></li>
                <!--<li><a href="">Contacts</a></li> -->
            </ul>
        </div>
        <div class="header-login">
            <?php
                if (isset($_SESSION['id'])) {
                    echo
                        '<form action="includes/logout.inc.php" method="post">
                            <button type="submit" name="logout-submit">Logout</button>
                        </form>';
                } else {
                    echo
                        '<form action="includes/login.inc.php" method="post">
                            <input type="text" name="username_email" placeholder="Username or E-mail">
                            <input type="password" name="password" placeholder="Password">
                            <button type="submit" name="login-submit">Login</button>
                        </form>
                        <a href="signup.php">Signup</a>';
                }
            ?>
        </div>
    </nav>