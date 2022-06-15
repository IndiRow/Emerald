<?php
    require 'header.php';
?>

<main>
    <h1 style="text-align: center; color: black; margin-top: 50px;">Signup</h1>
    <br>
    <?php
        if (isset($_GET['error'])) {
            if ($_GET['error'] == "emptyfields") {
                echo "<p class='error-text'>Fill in all fields</p><br>";
            } elseif ($_GET['error'] == "invaliduid") {
                echo "<p class='error-text'>Invalid username</p><br>";
            }
            // and so on
        } elseif (isset($_GET['signup']) && $_GET['signup'] == "success") {
            echo "<p class='success'>Signup successful</p><br>";
        }

        if (isset($_GET['newpassword'])) {
            if ($_GET['newpassword'] == "updated") {
                echo "<p class='success'>Password change successful</p><br>";
            }
        }
    ?>
    <form action="includes/signup.inc.php" method="post" style="text-align: center;">
        <input type="text" name="username" placeholder="Username"><br><br>
        <input type="text" name="email" placeholder="E-mail"><br><br>
        <input type="password" name="password" placeholder="Password"><br><br>
        <input type="password" name="password2" placeholder="Confirm password"><br><br>
        <button type="submit" name="signup-submit" style="background-color: green; margin-bottom: 20px;">Signup</button>
    </form>
    <a href="reset-password.php"><h5 style="text-align: center;">Forgot Your Password?</h5></a>
</main>

<?php
    require 'footer.php';
?>
