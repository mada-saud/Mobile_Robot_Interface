<?php
$m1 = $_POST['m1'];
$m2 = $_POST['m2'];
$m3 = $_POST['m3'];
$m4 = $_POST['m4'];
$m5 = $_POST['m5'];
$m6 = $_POST['m6'];

$localhost = "localhost:3307";
$username = "root";
$pass = "";
$dbname = "robot_arm";
$conn = new mysqli($localhost,$username,$pass,$dbname);

if($conn->connect_error){
    die (" Connection  is field:".$conn->connect_error);
}

if(isset($_POST['save'])){
$sql = "INSERT INTO Motors (Motor1,Motor2,Motor3,Motor4,Motor5,Motor6) values ($m1,$m2,$m3,$m4,$m5,$m6)";
if($conn->query($sql)==TRUE){
    echo " Insert successfully";
}
else
{ 
    echo"Error: " .$sql ."<br>".$conn->error;

}}


else if(isset($_POST['run'])){
 $result = "INSERT INTO run (run_on) values (1)";
 if($conn->query($result)==TRUE){
 echo " Insert on run successfully";
}
 else
{ 
  echo"Error: " .$result ."<br>".$conn->error;   
}
 $run = "SELECT run_on FROM run ORDER BY run_on DESC";
 $result = $conn->query($run);
 $row = $result->fetch_assoc();
 echo "<br>".$row["run_on"]. " ";
}


    
 else if(isset($_POST['stop'])){
 $stop = "INSERT INTO directione (Stop_s) values ('Stop')";
 if($conn->query($stop)==TRUE){
 echo " Entered into a direction table successfully ";
}
 else
{ 
 echo"Error: " .$stop ."<br>".$conn->error;       
}
 $stop = "SELECT Stop_s FROM directione ORDER BY Stop_s DESC";
 $result = $conn->query($stop);
 $row = $result->fetch_assoc();
 echo "<br>".$row["Stop_s"]. " ";
}




 else if(isset($_POST['forword'])) {
 $forword = "INSERT INTO directione (Forword) values ('Forword')";
 if($conn->query($forword)==TRUE){
 echo " Entered into a direction table successfully ";
}
else
{ 
 echo"Error: " .$forword ."<br>".$conn->error;
}
$forword = "SELECT Forword FROM directione ORDER BY Forword DESC";
$result = $conn->query($forword);
$row = $result->fetch_assoc();
echo "<br>".$row["Forword"]. " ";
 }



 else if(isset($_POST['backword'])){
 $backword = "INSERT INTO directione (Backword) values ('Backword')";
 if($conn->query($backword)==TRUE){
 echo " Entered into a direction table successfully ";
}
 else
{ 
 echo"Error: " .$backword ."<br>".$conn->error;
}
 $backword = "SELECT Backword FROM directione ORDER BY Backword DESC";
 $result = $conn->query($backword);
 $row = $result->fetch_assoc();
 echo "<br>".$row["Backword"]. " ";
}



 else if(isset($_POST['right'])){
 $right = "INSERT INTO directione (Right_r) values ('Right')";
 if($conn->query($right)==TRUE){
 echo " Entered into a direction table successfully ";
}
  else
{ 
 echo"Error: " .$right ."<br>".$conn->error;
}
 $right = "SELECT Right_r FROM directione ORDER BY Right_r DESC";
 $result = $conn->query($right);
 $row = $result->fetch_assoc();
 echo "<br>".$row["Right_r"]. " ";
}



  else if(isset($_POST['left'])){
  $left = "INSERT INTO directione (Left_l) values ('Left')";
  if($conn->query($left)==TRUE){
  echo " Entered into a direction table successfully ";
}
 else
{ 
  echo"Error: " .$left ."<br>".$conn->error;
}
  $left = "SELECT Left_l FROM directione ORDER BY Left_l DESC";
  $result = $conn->query($left);
  $row = $result->fetch_assoc();
  echo "<br>".$row["Left_l"]. " ";
}
    

$conn->close();
?>