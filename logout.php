<?php

if(isset($_COOKIE['name']))
{
setcookie('name',$uname,time()-60*60);
header('location:login.php');

}
?>