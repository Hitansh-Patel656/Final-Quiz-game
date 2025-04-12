<?php
    // include 'partials/_qdbconnect.php';

    if($_SERVER["REQUEST_METHOD"]=="POST"){
      session_start();
      include 'partials/_qdbconnect.php';
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

      body {
        margin-bottom: 5000px;
      }


      .question-ans-container {
        margin-bottom: 500px;
      }

      html {
        scroll-behavior: smooth;
      }


      .next-button-container, .previous-button-container {
        display: inline-block;
        background-color: lightblue;
        color: black;
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 4px;
        margin-top: 5px;
    }


    </style>
    <title>Right_Wrong</title>
</head>
<body>
    <div class="ques_form"></div>
      <!-- <form action="response_check.php" method="POST"> -->

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
              
              

              // $_SESSION['$row']=
              // <input type="hidden" id="q_id" name="q_id" value="<?php $row['sno']>" >
              // echo ".$row[sno]. .$row[question]. <br> .$row[op1]. <br> .$row[op2]. <br> .$row[op3]. <br> .$row[op4]. <br>";
              echo "<section id='q$i'>";
              echo "<div class='question-ans-container'><div class='question-container'><p>" . $i . ". " . $row['question'] . "</p></div>";

              echo "<div class='option1'><input type='radio' name='q$i' value='op1'> " . $row['op1'] . "</div><br>";
              echo "<div class='option2'><input type='radio' name='q$i' value='op2'> " . $row['op2'] . "</div><br>";
              echo "<div class='option3'><input type='radio' name='q$i' value='op3'> " . $row['op3'] . "</div><br>";
              echo "<div class='option4'><input type='radio' name='q$i' value='op4'> " . $row['op4'] . "</div><br>";

              if ($i==1)
                echo "<div class='next-button-container'><a href='#q". ($i+1) ."'>Next</a></div>";
              
              else if($i==5)
                echo "<div class='previous-button-container'><a href='#q". ($i-1) ."'>Previous</a></div>";
              
              else if($i>1 && $i<5)
              {
                echo "<div class='previous-button-container'><a href='#q". ($i-1) ."'>Previous</a></div><br>";
                echo "<div class='next-button-container'><a href='#q". ($i+1) ."'>Next</a></div>";                
              }
            
              echo "<input type='hidden' id='q$i-no' name='q$i-no' value='" . $row['sno'] . "'></div>";
              $i=$i+1;

              echo "</section>";
            }
          
    
          ?>
          <!-- <button type="submit" class="btn btn-primary my-3">Submit</button> -->
        <!-- </form> -->
    </div>      
        
      
    
    
</body>
</html>