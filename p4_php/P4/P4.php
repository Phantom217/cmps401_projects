<?php
    //DB connect
    $link = mysqli_connect("localhost", "cmps401", "Mycmps401db", "cmps401");

    date_default_timezone_set('America/Chicago'); //Set timezone

    //From variable declartions 
    if(isset($_POST['submit'])){
        $firstName = $_POST["firstName"];
        $lastName = $_POST["lastName"];
    }
    $fullName = $firstName . " " . $lastName;

    $score = checkAnswers(0);
    $time = date("y-m-d h:i:s");

    logTestScore($link, $firstName, $lastName, $score, $time);

    function checkAnswers($score){
        $question1 = $_POST["question1"];
        $question2 = $_POST["question2"];
        $question3 = $_POST["question3"];
        $question4 = $_POST["question4"];
        $question5 = $_POST["question5"];
        $question6 = $_POST["question6"];
        $question7 = $_POST["question7"];
        $question8 = $_POST["question8"];
        $question9 = $_POST["question9"];
        $question10 = $_POST["question10"];
        
        if($question1 == "a"){
            $score += 10;
        }
        if($question2 == "c"){
            $score += 10;
        }
        if($question3 == "a"){
            $score += 10;
        }
        if($question4 == "a"){
            $score += 10;
        }
        if($question5 == "c"){
            $score += 10;
        }
        if($question6 == "b"){
            $score += 10;
        }
        if($question7 == "a"){
            $score += 10;
        }
        if($question8 == "c"){
            $score += 10;
        }
        if($question9 == "a"){
            $score += 10;
        }
        if($question10 == "P4.php"){
            $score += 10;
        }

        return $score;
    }

    function checkIfTakenBefore($link, $firstName, $lastName){
        $takenBefore = false;
        $sql = "SELECT FirstName, LastName 
                FROM   g207 
                WHERE  FirstName = '$firstName'
                AND    LastName = '$lastName'
                LIMIT 1
        ";

        $result = mysqli_query($link, $sql);

        if(mysqli_num_rows($result) > 0){
            $row = mysqli_fetch_assoc($result);
            
            if($row["FirstName"] == $firstName && $row["LastName"] == $lastName){
                $takenBefore = true;
            }
        }
        else{
            echo $link->error;
        }

        return $takenBefore;
    }

    function logTestScore($link, $firstName, $lastName, $score, $time){
        $sql;
        $takenBefore = checkIfTakenBefore($link, $firstName, $lastName);

        if($takenBefore){
            echo "test taken before";
            $sql = "UPDATE g207 
                    SET Score = '$score', 
                        Time = '$time' 
                    WHERE FirstName = '$firstName' 
                    AND   LastName = '$lastName'
            ";
        }
        else {
            $sql = "INSERT INTO g207 (FirstName, LastName, Score, Time)
                    VALUES ('$firstName', '$lastName', '$score', '$time')
            ";
        }

        if(mysqli_query($link, $sql) === TRUE){
            displayResults($firstName, $lastName, $score, $time);
        }
        else{
            echo "Error: " . $sql . "<br>" . $link->error;
        }
    }

    function displayResults($firstName, $lastName, $score, $time){
        echo $firstName . " " . $lastName . " your score is: " . $score . "%!<br>";
        echo "Test was completed at: " . $time . "<br>";
        echo "Feel free to take the test again if you would like!";
    }

    mysqli_close($link);
?>