<?php
global $con;
session_start();
error_reporting(0);
include("includes/config.php");
if(isset($_POST['submit']))
{
    $regno=$_POST['regno'];
    $password=md5($_POST['password']);
    $query=mysqli_query($con,"SELECT * FROM students WHERE StudentRegno='$regno' and password='$password'");
    $num=mysqli_fetch_array($query);
    if($num>0)
    {
        $extra="change-password.php";//
        $_SESSION['login']=$_POST['regno'];
        $_SESSION['id']=$num['studentRegno'];
        $_SESSION['sname']=$num['studentName'];
        $uip=$_SERVER['REMOTE_ADDR'];
        $status=1;
        $log=mysqli_query($con,"insert into userlog(studentRegno,userip,status) values('".$_SESSION['login']."','$uip','$status')");
    }
    else
    {
        $_SESSION['errmsg']="Invalid Reg no or Password";
        $extra="index.php";
    }
    $host=$_SERVER['HTTP_HOST'];
    $uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
    header("location:https://$host$uri/$extra");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Student Login</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
<?php include('includes/header.php');?>
<div class="content-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 class="page-head-line">Please Login </h4>

            </div>

        </div>
        <span style="color:red;" ><?php echo htmlentities($_SESSION['errmsg']); ?><?php echo htmlentities($_SESSION['errmsg']="");?></span>
        <form name="admin" method="post">
            <div class="row">
                <div class="col-md-6">
                    <label>Reg no : </label>
                    <input type="text" name="regno" class="form-control"  />
                    <label>Password :  </label>
                    <input type="password" name="password" class="form-control"  />
                    <hr />
                    <button type="submit" name="submit" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;Log Me In </button>&nbsp;
                </div>
        </form>
        <div class="col-md-6">
            <div class="alert alert-info">
                Please enter the information to log in.
            </div>
        </div>

    </div>
</div>

<?php include('includes/footer.php');?>

<script src="assets/js/jquery-1.11.1.js"></script>

<script src="assets/js/bootstrap.js"></script>
</body>
</html>
