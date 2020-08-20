<html>
<html>
<head>
<title>ICHOR change password</title>
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

<li><a href="contact_us.php">Contact us</a></li>
<li><a href="logout.php">Logout</a></li>
</div>

<div class="login3">
<center>
<h5>change your password here<h5></center>
<form method="post" action="#">
<center>
<table>
<p><tr><td><b>Old password</b></td><td><input type="password" size="30" name="opwd"/></td></tr></p>
<p><tr><td><b>New password</b></td><td><input type="password" size="30" name="npwd"/></td></tr></p>
<p><tr><td><b>Confirm password</b></td><td><input type="password" size="30" name="cpwd"/></td></tr></p>
</table>
<br><input type="submit" name="submit">
<br><br><a href="avail.php"><input id="but3" type="button" value="Update your availabity status"></a>
<br><a href="cont.php"><input id="but3" type="button" value="Change Your contact Number"></a>
</center>
</div>

</form>
</body>
</html>


<?php
if(isset($_COOKIE['name']))
{
 $uname=$_COOKIE['name'];
 echo $uname;
 if(isset($_POST['submit']))
 {
   $opwd=$_POST['opwd'];
   $npwd=$_POST['npwd'];
   $cpwd=$_POST['cpwd'];
   echo $opwd;
   echo $npwd;
   echo $cpwd;
   $link=mysqli_connect('localhost','root','','ichor');
      if(!$link)
      {
       die('database could not open'.mysqli_error());
      }
      else
      echo "Database Connected ";
      
	  $query1="select * from login_ichor where username='$uname'";
	  $result1=mysqli_query($link,$query1);
      $rowp=mysqli_fetch_array($result1);
	  $j=strcmp($rowp[3],$opwd);
	  if($j==0)
	   {
	   $i=strcmp($npwd,$cpwd);
	   if($i==0)
	   {
	     $query="update login_ichor set password='$npwd' where username='$uname'";
          if(mysqli_query($link,$query))
          {
            echo "value updated";
          }
       } 
      
	  }
	  else "<script type='text/javascript'>alert('Please Enter Correct Password');</script>";
      	  
  
  }
}
  
?>