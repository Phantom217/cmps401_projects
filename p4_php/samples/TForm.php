<html>
    <head>
        <title>PHP Test Form</title>
    </head>
    <body>
        <?php
            // Display "name" and "age" from user inputs in TPost.html
            // Program-ID: TForm.php
            // Author:     Tyler Oalman
            // OS:         Arch Linux
            // Parser:     PHP 7

            print "Welcome ".$_POST['name']."<br>";
            print "You are ".$_POST['age']." years old<br>";

            /*
             * Output:
             *   Welcome Rachel
             *   You are 18 years old
             */
        ?>
    </body>
</html>
