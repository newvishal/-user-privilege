<?php 
	session_start();
		include('config/dbconnection.php');
        include('config/config.php');
        if(isset($_POST['login'])) {
            $install_url .= 'index.php';
            $username = $_POST['username'];
            $password = $_POST['password'];
            $sql = "SELECT * FROM tbl_users WHERE username='" . $username . "'";
            $result = mysqli_query($conn , $sql);
            if(mysqli_num_rows($result) > 0){
                $row = mysqli_fetch_array($result);
                if(isset($row['username'])){
                     $hasedpassword = hash('sha256',$password);
                    //  var_dump($row['password'] .','.$hasedpassword);exit;    
                     if($row['password'] ===  $hasedpassword){
                        $_SESSION["username"]         = $row['username'];
                        $_SESSION["id"]               = $row['id'];
                        $_SESSION["company_id"]       = $row['company_id'];
                        $_SESSION["emp_id"]           = $row['emp_id'];
                        $_SESSION["group_id"]         = $row['group_id'];
                        if($_SESSION["username"] != ''){
                            header("Location:smartadmin/dashboard.php"); 
                        }
                     }else{
                        echo "<script type='text/javascript'>alert('Invalid Details.'); window.location.replace('". $install_url ."');</script>";
                    }
                }
            }else{
                echo "<script type='text/javascript'>alert('Invalid Details.'); window.location.replace('". $install_url ."');</script>";
            }
           
        }
?>