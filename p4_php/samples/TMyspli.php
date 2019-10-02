<html>
    <head>
        <title>PHP Test MySQL</title>
    </head>
    <body>
        <?php
            // Test MySQL Database
            //    Username:     cmps401
            //    Password:     Mycmps401db
            // Program-ID: TMysqli.php
            // Author:     Tyler Oalman
            // OS:         Arch Linux
            // Parser:     PHP 7

            // Connect and Select MySQL Database
            $conn = new mysqli("localhost", "cmps401", " Mycmps401db", "cmps401");
            if ($conn->connect_error)
                die("<br>Connection failed:".$conn->connect_error);
            else
                echo "<br>Connection Success: Database cmps401 Connected";

            // Test: Create MySQL Table
            $q = "CREATE TABLE person (
                    Name varchar(20),
                    Age int,
                    Date varchar(20),
                    PRIMARY KEY (Name)
                 )";
            sendQuery($conn, $q);

            // Test: Insert 3 Rows
            $d = date("m/d/Y h:i A");
            $q = "INSERT INTO person VALUES('N1', '21', '$d')";
            sendQuery($conn, $q);
            $q = "INSERT INTO person VALUES('N2', '22', '$d')";
            sendQuery($conn, $q);
            $q = "INSERT INTO person VALUES('N3', '23', '$d')";
            sendQuery($conn, $q);

            // Test: Update Rows
            $q = "UPDATE person SET Age = '18' WHERE Name = 'N1'";
            sendQuery($conn, $q);

            // Test: Delete Rows
            $q = "DELETE FROM person WHERE Name = 'N2'";
            sendQuery($conn, $q);

            // Test: Select Rows
            print "<br><br>-- Display Table --";
            $q = "SELECT * FROM person";
            $r = sendQuery($conn, $q);
            for($i = 0; $row = mysqli_fetch_assoc($r); $i++)
                echo "<br> row".$i.": ".
                    $row['Name']." ".$row['Age']." ".$row['Date'];

            // Test: Drop Table
            $q = "DROP TABLE person";
            sendQuery($conn, $q);
            mysqli_close($conn);
            print "<br>Bye! Bye!<br>";

            function sendQuery($conn, $q) {
                if ($r = mysqli_query($conn, $q))
                    echo "<br>Success Query: ".$q;
                else
                    echo "<br>Failure Query: ".$q;
                return $r;
            }

            /*
             * Output:
             *   Connection Success: Database cmp401 Connected
             *   Success Query: CREATE TABLE person ( Name varchar(20), Age int, Date
             *   varchar(20))
             *   Success Query: INSERT INTO person VALUES('N1', '21', '08/14/2018 08:24 PM')
             *   Success Query: INSERT INTO person VALUES('N2', '22', '08/14/2018 08:24 PM')
             *   Success Query: INSERT INTO person VALUES('N3', '23', '08/14/2018 08:24 PM')
             *   Success Query: UPDATE person SET Age = '18' WHERE Name = 'N1'
             *   Success Query: DELETE FROM person WHERE Name = 'N2'
             *
             *   -- Display Table --
             *   Success Query: SELECT * FROM person
             *   row0: N1 18 08/14/2018 08:24 PM
             *   row1: N3 23 08/14/2018 08:24 PM
             *   Success Query: DROP TABLE person
             *   Bye! Bye!
             */
        ?>
    </body>
</html>
