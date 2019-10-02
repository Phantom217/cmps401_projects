<html>
    <head>
        <title>PHP Test Subprograms</title>
    </head>
    <body>
        <?php
            // Test Subprograms: Php Call by Value only (Array also)
            // Program-ID: TSub.php
            // Author:     Tyler Oalman
            // OS:         Arch Linux
            // Parser:     PHP 7

            //Test call by value
            print "PHP: Call by Value only<br>";
            $m = 1;
            func1($m);
            print "m = ".$m."<br>";
            $n = func2($m);
            print "n = ".$n."<br>";

            //Test Array to Subprogram (Array also Call-By-Value)
            print "Test Array to Subprogram (Array also Call-By-Value)<br>";
            $a = array(10, 20, 30);
            func3($a[1], $a);

            for($i = 0; $i < 3; $i++) {
                print "a[".$i."] = ".$a[$i]." ";
            }

            print "<br>";
            $b = func4($a[1], $a);
            for($i = 0; $i < 3; $i++) {
                print "b[".$i."] = ".$b[$i]." ";
            }

            function func1($i) {
                $i = $i + 1;
            }

            function func2($i) {
                $i = $i + 2;
                return $i;
            }

            function func3($i, $j) {
                $i = $i + 3; $j[0] = $j[1] + 4;
            }

            function func4($i, $j) {
                $i = $i + 3; $j[0] = $j[1] + 4;
                return $j;
            }

            /*
             * Output:
             *   PHP: Call by Value only
             *   m = 1
             *   n = 3
             *   Test Array to Subprogram (Array also Call-By-Value)
             *   a[0] = 10 a[1] = 20 a[2] = 30
             *   b[0] = 24 b[1] = 20 b[2] = 30
             */
        ?>
    </body>
</html>
