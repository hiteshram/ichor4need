<html>
<html>
<head>
<title>ICHOR donor contact</title>
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
<h5>Update your Contact Number here<h5></center>
<form method="post" action="#">
<center>
<table>
<p><tr><td><b>Mobile Number</b></td><td><input type="tel" name="mphno" size="30"/></td></tr></p>
<p><tr><td><b>Residence Number</b></td><td><input type="tel" name="rphno" size="30"/></td></tr></p>
<p><tr><td><b>Office Number</b></td><td><input type="tel" name="ophno" size="30"/></td></tr></p>
</table>
<br><input type="submit" name="submit">
<br><br><a href="pwd.php"><input id="but3" type="button" value="Change Your Password"></a>
<br><a href="avail.php"><input id="but3" type="button" value="Update your availabity status"></a>

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
   $mphno=0;
   $rphno=0;
   $ophno=0;
   $mphno=$_POST['mphno'];
   $rphno=$_POST['rphno'];
   $ophno=$_POST['ophno'];
   
    echo $mphno;
    echo $rphno;
    echo $ophno;
     
   $link=mysqli_connect('localhost','root','','ichor');
      if(!$link)
      {
       die('database could not open'.mysqli_error());
      }
      else
      echo "Database Connected ";
	  
	  if($mphno!=0)
	  {
	   $query="update phone set mobile='$mphno' where username='$uname'";
       if(mysqli_query($link,$query))
          {
            echo "mobile value updated";
          }
      }	   
		  
	  if($rphno!=0)
	  {
	   $query="update phone set residence='$rphno' where username='$uname'";
       if(mysqli_query($link,$query))
          {
            echo "residence value updated";
          }
      }
 
      if($ophno!=0)
	  {
	   $query="update phone set office='$ophno' where username='$uname'";
       if(mysqli_query($link,$query))
          {
            echo "office value updated";
          }
      } 
	} 
    else "<script type='text/javascript'>alert('Enter phone number to update ');</script>";
 }

?>
