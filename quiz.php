<?php
    // include 'partials/_qdbconnect.php';

    if($_SERVER["REQUEST_METHOD"]=="POST"){
      
      include 'partials/_qdbconnect.php';
        session_start();
      $username="USER";
      $questions=5;
      $topic="History";

      if(isset($_POST["username"]))
      {
        
        $_SESSION['username']=$username;
        $_SESSION['no_questions']=$questions;
        $_SESSION['topic']=$topic;
      }

      if(isset($_POST["no_questions"]))
      {      
        $_SESSION['no_questions']=$questions;
      }

      if(isset($_POST["topic"]))
      {
        $_SESSION['topic']=$topic;
      }

    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      input[type="Submit"], button[type="submit"]
      {
        background-color: blue;
        color: white;
        padding: 10px 15px;
        border: none;
        cursor: pointer;
      }

/*       
      body {
        margin-bottom: 5000px;
      } */


      /* .question-ans-container {
        margin-bottom: 500px;
      } */

      


      /* .next-button-container, .previous-button-container {
        display: inline-block;
        background-color: lightblue;
        color: black;
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 4px;
        margin-top: 5px;
    } */



    /* from here the css of question display starts */



  .option-item input[type="radio"]
  {
    display: none;
    /* opacity: 0;
    position: absolute;
    cursor: pointer; */
  }

  html {
    scroll-behavior: smooth;
  }
  
  body {
    font-family: sans-serif;
    background-color: #0a0a1ab3;
    color: #ffffff;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    
  }
  
  .question-ans-container {
    background-color: #141421;
    padding: 50px; /* Increased padding for the main container */
    border-radius: 20px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    width: 100%;
    max-width: 700px; /* Slightly increased max width */
    text-align: left;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin:0;
    margin-top: 200px;
    margin-bottom: 200px;
  }
  
  .question-container {
    background: linear-gradient(90deg, #00bcd4, #ba68c8);
    padding: 25px; /* Increased padding for the question box */
    border-radius: 15px;
    margin-bottom: 40px; /* Increased margin below question */
    display: flex;
    align-items: center;
    width: 100%;
  }
  
  .question-number {
    background-color: #ffffff;
    color: #000000;
    font-weight: bold;
    border-radius: 50%;
    width: 40px; /* Slightly larger number circle */
    height: 40px; /* Slightly larger number circle */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 3px;
    margin-right: 25px; /* Increased margin for number */
    font-size: 1.1em; /* Slightly larger number font */
  }
  
  .question-text {
    color: #ffffff;
    font-size: 1.5em; /* Larger question text */
    margin: 0;
  }
  
  .options-grid {
    display: grid;
    gap: 20px; /* Increased gap between options */
    width: 100%;
    margin-bottom: 30px; /* Increased margin below options */
  }
  

  .option-item {
    background-color: #1e1e2d;
    color: #ffffff;
    border: 2px solid #2e2e3d;
    padding: 20px 25px; /* Increased padding for options */
    border-radius: 10px; /* Slightly more rounded options */
    display: flex;
    align-items: center;
    cursor: pointer;
    transition: background-color 0.3s ease, border-color 0.3s ease;
    margin-bottom: 15px; /* Increased margin below each option */
    position: reletive;
  }
  
  .option-item:hover {
    background-color: #3a3a4a;
    border-color: #4d4d5e;
  }
  

  /* Highlight selected option in blue */
  .option-item input[type="radio"]:checked ~ * {
  color: #2196f3;
}

.option-item input[type="radio"]:checked ~ .option-letter {
  background-color: #ffffff;
  color: #2196f3;
}

.option-item input[type="radio"]:checked ~ .option-text {
  font-weight: bold;
}

  .option-letter {
    background-color: #2196f3;
    color: #ffffff;
    font-weight: bold;
    border-radius: 50%;
    width: 32px; /* Slightly larger letter circle */
    height: 32px; /* Slightly larger letter circle */
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 20px; /* Increased margin for letter */
    font-size: 1.2em; /* Slightly larger letter font */
  }
  
  .option-text {
    font-size: 1.4em; /* Larger option text */
  }
  
  .navigation-buttons {
    display: flex;
    gap: 30px; /* Increased space between buttons */
  }
  
  .nav-button {
    background-color: #283593;
    color: #ffffff;
    border: none;
    padding: 12px 25px; /* Slightly larger buttons */
    border-radius: 5px;
    cursor: pointer;
    font-size: 1.1em; /* Slightly larger button text */
    transition: background-color 0.3s ease;
  }
  
  .nav-button:hover {
    background-color: #3f51b5;
  }



    </style>
    <title>Quiz</title>
</head>
<body>
    <div class="ques_form"></div>
      <form action="response_check.php" method="POST">

          <?php
            
            $i=1;

            $r_num=0;
            $r_temp=0;
            while($i<=$_SESSION['no_questions'])
            {
              $r_temp-$r_num;
              $r_num=mt_rand(1,30);
              if($r_temp==$r_num)
              {
                $r_num=mt_rand(1,30);
              }
 
              if($_SESSION['topic']=="History") // for database of history.
              {
                $sql = "SELECT * FROM questions WHERE `sno`=$r_num";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
              }

              else // for database of Geography.
              {
                $sql = "SELECT * FROM questions1 WHERE `sno`=$r_num";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
              }
              
              

            
              echo "<section id='q$i'>";
              echo "<div class='question-ans-container'><div class='question-container'><span class='question-number'>" . $i . "</span><h1 class='question-text'>". $row['question'] . "</h1></div>";

              echo "<div class='options-grid'><label class='option-item'><input type='radio' name='q$i' value='op1'><span class='option-letter'>A</span><span class='option-text'>" . $row['op1'] . "</span></label>";
              echo "<label class='option-item'><input type='radio' name='q$i' value='op2'><span class='option-letter'>B</span><span class='option-text'>" . $row['op2'] . "</span></label>";
              echo "<label class='option-item'><input type='radio' name='q$i' value='op3'><span class='option-letter'>C</span><span class='option-text'> " . $row['op3'] . "</span></label>";
              echo "<label class='option-item'><input type='radio' name='q$i' value='op4'><span class='option-letter'>D</span><span class='option-text'>" . $row['op4'] . "</span></label></div>";

              
              if ($i==1)
                echo "<div class='navigation-buttons'><a class='nav-button' href='#q". ($i+1) ."'>Next</a></div>";
              
              else if($i==5)
                echo "<div class='navigation-buttons'><a
                class='nav-button' href='#q". ($i-1) ."'>Previous</a></div>";
              
              else if($i>1 && $i<5)
              {
                echo "<div class='navigation-buttons'><a class='nav-button' href='#q". ($i-1) ."'>Previous</a></div><br>";
                echo "<div class='navigation-buttons'><a
                class='nav-button' href='#q". ($i+1) ."'>Next</a></div>";                
              }
            
              echo "<input type='hidden' id='q$i-no' name='q$i-no' value='" . $row['sno'] . "'></div>";
              $i=$i+1;

              echo "</section>";
            }
          
    
          ?>
          <button type="submit" class="btn btn-primary my-3">Submit</button>
        </form>
    </div>      
        
      
    
    
</body>
</html>
