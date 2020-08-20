<html>
<html>
<head>
<title>ICHOR Donor Login</title>
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
<li><a href="logout.php">logout</a></li>
</div>
<center>
<h3 >Welcome Donor<h3></center>
<div class="login2">
<a href="pwd.php"><input id="but" type="submit" value="Change Your Password" name="password"></a>                    
<br><a href="cont.php"><input id="but" type="submit" value="Change Your contact Number" name="contact"></a>       
<br><a href="avail.php"><input id="but" type="submit" value="Update your availabity status" name="availability"></a>      
</div>

</body>

</html>

<?php
if(isset($_COOKIE['name']))
{
$uname=$_COOKIE['name'];
  if(isset($_POST['password']))
  {
       setcookie('name',$uname,time()+60*60);
       echo "cookie created";
	   header('location:pwd.php');
  }

  if(isset($_POST['contact']))
  {
       setcookie('name',$uname,time()+60*60);
       echo "cookie created";
	   header('location:cont.php');
  }

  
 if(isset($_POST['availability']))
  {
       setcookie('name',$uname,time()+60*60);
       echo "cookie created";
	   header('location:avail.php');
  }

  
  
  
  }
else
header('location: home.php');

?>