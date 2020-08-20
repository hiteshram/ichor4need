<html>
<html>
<head>
<title>ICHOR donor availability</title>
<link rel="stylesheet" href="st6.css"/>
</head>
<body>
<div id="header">
<div id="header4">
<table>
<td><div id="header1">
<img src="Hand-holding-a-drop-of-blood-_60119656-Converted-01.jpg">
</div></td>
<td><div id="header5">
ichor 4 need
<table>
<td>you don't have to be a doctor to save a life 
</td></table>
</div><td>
</table>
</div>
</div>
<div id="menu">
<li><a href="home.php"> Home </a></li>
<li><a href="about.php">About </a></li>
<li><a href="donorlist_ichor.php">Find a blood donor </a></li>

<li><a href="contact_us.html">Contact us</a></li>
<li><a href="logout.php">Logout</a></li>
</div>

<div class="login3">
<center>
<h5>Change your availabilty status here<h5></center>
<center>
<form method="post" action="#">
Availabilty status</b></td><td><select id="siz" name="avail"  /><option value=NULL> Select...</option>
<option>YES</option>
<option>NO</option><br>
<input type="submit" name="submit">

<br><br><br><br><a href="pwd.php"><input id="but3" type="button" value="Change Your Password"></a>
<br><a href="cont.php"><input id="but3" type="button" value="Change Your contact Number"></a>
</center>
</div>
</body>
</form>
</html>


<?php
if(isset($_COOKIE['name']))
{
 $uname=$_COOKIE['name'];
 echo $uname;
 if(isset($_POST['submit']))
 {
  $avail=$_POST['avail'];
 $link=mysqli_connect('localhost','root','','ichor');
      if(!$link)
      {
       die('database could not open'.mysqli_error());
      }
      else
      echo "Database Connected ";
      $query="update availability set available='$avail' where username='$uname'";
	  
	  if(mysqli_query($link,$query))
      {
            echo "value updated";
      }
     
 }
} 
 
 ?>