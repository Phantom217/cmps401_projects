<?php
    //DB connect
    $link = mysqli_connect("localhost", "cmps401", "Mycmps401db", "cmps401");

    if (!$link) {
        echo "Error: Unable to connect to MySQL." . PHP_EOL;
        echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
        exit;
    }

    echo "Success: A proper connection to MySQL was made! The my_db database is great." . PHP_EOL;
    echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

    date_default_timezone_set('America/Chicago'); //Set timezone
    //From variable declartions 
    if(isset($_POST['submit'])){
        $firstName = $_POST["firstName"];
        $lastName = $_POST["lastName"];
    }
    $fullName = $firstName . " " . $lastName;

    echo $fullName . "<br>";

    $score = checkAnswers(0);
    $time = date("l m/d/Y h:i:sa");

    $score = getPercentage($score);
    
    echo $score . "%<br>";
    echo $time . "<br>";

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

        echo $question1 . "<br>";
        echo $question2 . "<br>";
        echo $question3 . "<br>";
        echo $question4 . "<br>";
        echo $question5 . "<br>";
        echo $question6 . "<br>";
        echo $question7 . "<br>";
        echo $question8 . "<br>";
        echo $question9 . "<br>";
        echo $question10 . "<br>";
        
        if($question1 == "a"){
            $score += 1;
        }
        if($question2 == "c"){
            $score += 1;
        }
        if($question3 == "a"){
            $score += 1;
        }
        if($question4 == "a"){
            $score += 1;
        }
        if($question5 == "c"){
            $score += 1;
        }
        if($question6 == "b"){
            $score += 1;
        }
        if($question7 == "a"){
            $score += 1;
        }
        if($question8 == "c"){
            $score += 1;
        }
        if($question9 == "a"){
            $score += 1;
        }
        if($question10 == "P4.php"){
            $score += 1;
        }

        return $score;
    }

    function getPercentage($score){
        $total = 10;

        $percentage = ($score * 100) / $total;

        return $percentage;
    }

    mysqli_close($link);
?>