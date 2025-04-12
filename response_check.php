<?php
// $login = false;
// $showError = false;
if($_SERVER["REQUEST_METHOD"] == "POST"){
    include 'partials/_qdbconnect.php';
    session_start();
    $q_no=array(1,2,3,4,5);
    $s_op=array("", "", "", "", "");
    $check_res=array(false,false,false,false,false);
    $_SESSION['score']=0;
    $j=1;
    $k=0;
    while($j<=5)
    {
      if(isset($_POST["q$j-no"]))
      {
        $q_no[$k]=$_POST["q$j-no"];

        if(isset($_POST["q$j"]))
        {
          $s_op[$k]=$_POST["q$j"];
          $check_res[$k]=true;
        }  

        // else
          // echo "User didn't select the option of the question $j.<br>";

      }
      $j=$j+1;
      $k=$k+1;
    }  
     

    $l=0;
    $score=0;
    while($l<5)
    {
      $sql = "SELECT * FROM `questions` WHERE `sno` = $q_no[$l]";
      $result = mysqli_query($conn, $sql);
      $row=mysqli_fetch_assoc($result);

      // if($check_res[$l]==false)
        // echo "Option not selected<br>";

      if($row['ans']==$s_op[$l])
      {
        $score++;
      }

      // else 
      // {
        // echo "Incorrect<br>";
      // }

      $l=$l+1;
    }

    $_SESSION['score']=$score;
    header("Location: result.php");
    // $sql = "Select * from users where username='$username' AND password='$password'";
    
    //     while($row=mysqli_fetch_assoc($result)){
           
    //         } 
    //         else{
    //             $showError = "Invalid Credentials";
    //         }
    //     }
        
    
    // else{
    //     $showError = "Invalid Credentials";
    // }

} 



else {
  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quiz Results</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #667eea, #764ba2);
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .result-card {
      background-color: #ffffff22;
      backdrop-filter: blur(10px);
      padding: 40px;
      border-radius: 20px;
      text-align: center;
      width: 90%;
      max-width: 400px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
      animation: fadeIn 1s ease-in;
    }

    .result-card h1 {
      font-size: 32px;
      margin-bottom: 10px;
    }

    .result-card p {
      font-size: 18px;
      margin: 10px 0;
    }

    .score {
      font-size: 48px;
      font-weight: bold;
      margin: 20px 0;
      color: #ffd700;
    }

    .button {
      background-color: #fff;
      color: #764ba2;
      padding: 12px 24px;
      border: none;
      border-radius: 30px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
      margin-top: 20px;
    }

    .button:hover {
      background-color: #e0e0e0;
    }

    @keyframes fadeIn {
      from {opacity: 0; transform: translateY(20px);}
      to {opacity: 1; transform: translateY(0);}
    }

    @media (max-width: 500px) {
      .result-card {
        padding: 20px;
      }

      .score {
        font-size: 36px;
      }
    }
  </style>
</head>
<body>

  <div class="result-card">
    <h1>Quiz Completed!</h1>
    
    <p>Your Score:</p>
    <div class="score"><?php echo $_SESSION['score'] ?> / <?php echo $_SESSION['no_questions']?></div>
    
    <p>🔥 Great job! You're a Quiz master in <?php echo $_SESSION['topic'] ?>!</p>

    <button class="button" onclick="location.href='quiz.html'">Try Again</button>
  </div>

</body>
</html>
