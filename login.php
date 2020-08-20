<html>
<html>
<head>
<title>ICHOR Donor Login</title>
<link rel="stylesheet" href="st6.css"/>
</head>
<body>
<?php
if(isset($_COOKIE['name']))
{
  header('location:login2.php');
}
?>
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
<li><a href="about.php"> About </a></li>
<li><a href="donorlist_ichor.php">Find a Donor</a></li>
<li><a href="login.php">Login</a></li>
<li><a href="contact_us.html"> Contact us</a></li>
</div>
<div class="mlogin">
<div class="login">
<center><h1>Login Details</h1>
<p>
<form method="post" action="#">
<table>
<p><tr><td><b>User Name*</b></td><td><input type="text" id="name" name=" user" required="required"/></td></tr></p>
<p><tr><td><b>Password*:</b></td><td><input type="Password" name="pwd" required="required" placeholder="Min 6 Characters"/></td></tr></p>
</table>

<input type="submit"  name= "submit"  onclick="check()"/>
</form>
<br><br>If not registered<a href="ichor_registration1.php"><br>click here</a>
</center>
</div>
</div>
</body>
<script>
             function check()
             {
               var a=/^[a-z A-Z]{3,30}$/;              
               var x=document.getElementById('name');	  
	            if(x.value==" ")
                alert('value is not mentioned');
	            
                
              }  
	       
		   
		   </script>
</html>

<?php

if(isset($_POST["submit"]))
   {
      
	  
	  $username=$_POST["user"];
      $password=$_POST["pwd"];
      $link=mysqli_connect('localhost','root','','ichor');
      if(!$link)
      {
       die('database could not open'.mysqli_error());
      }
      else
      echo "Database Connected ";
      $query="select * from login_ichor where  username= '$username' AND password= '$password '";
	  $result=mysqli_query($link,$query);
	  $row=mysqli_fetch_assoc($result);
	  $uname=$row['username'];
	  $pword=$row['password'];
	  $fname=$row['fname'];
	  $lname=$row['lname'];
	  if(($username==$uname)&&($password==$pword))
      {
       setcookie('name',$uname,time()+60*60);
       echo "cookie created";
	   header('location:login2.php');
      }
      else
	  passworderror(); 
	}

function passworderror()
		   {
		    echo "<script type='text/javascript'>alert('Invalid User ID or Password');</script>";    
		}	

?>