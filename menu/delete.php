<?php 
    include('../config/dbconnection.php');
    // include('../config/debug.php');
    include('../config/permission.php');
    
        if(isset($_GET['id'])){
            $sql = "SELECT * FROM tbl_menu where id=".$_GET['id'];
            
            $allmenus = mysqli_query($conn, $sql);
            $rowcount = mysqli_num_rows($allmenus);
            if($rowcount > 0){
                
                    $sqldelete = "DELETE FROM tbl_menu WHERE id=".$_GET['id'];
                    if (mysqli_query($conn, $sqldelete)) {
                        echo "<script type='text/javascript'>alert('Data Deleted Successfully'); window.history.go(-2);</script>";
                    }else{
                        echo "<script type='text/javascript'>alert('Error Occur!'); window.location.replace('". $install_url ."');</script>";
                    }
            }else{
                echo "<script type='text/javascript'>alert('No Data Found For This Id'); window.history.go(-2);</script>";
            }
        }else{
            echo "<script type='text/javascript'>alert('invalid request'); window.history.go(-2);</script>";
        }
?>