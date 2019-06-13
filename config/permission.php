<?php 
         // select assign group => menu
        //  $permissionGrant = false;
        include('../config/debug.php');
        session_start();
        define('PERMISSION_GRANT',false);
		    $sqlForselectAssignGroupMenu = "SELECT group_title,group_permission FROM tbl_group where id =". $_SESSION["group_id"];
         //  var_dump($sqlForselectAssignGroupMenu);exit;
          $AssignMenus	 = mysqli_query($conn, $sqlForselectAssignGroupMenu);
          $getAllmenus 	 = mysqli_fetch_array($AssignMenus);
          $allPermissionMenuInArray = explode(',',$getAllmenus['group_permission']);
        //   var_dump($allPermissionMenuInArray);
         $uri = $_SERVER['REQUEST_URI']; // $uri == example.com/sub
        //  $myDomain = preg_replace('/^www\./', '', parse_url($uri, PHP_URL_HOST));
        //  var_dump($uri  );exit;  
         $exploded_uri = explode('/', $uri); 
         $reqURL = array($exploded_uri[2],$exploded_uri[3]);
       
         $ReqURL = implode('-',$reqURL);
         $removeExtension = explode('.',$ReqURL);
         $finalReqURL = $removeExtension[0];
       //   var_dump($finalReqURL);exit;
         if(in_array($finalReqURL , $allPermissionMenuInArray)){
                // echo 'permission Grant';
         }else{
            //  echo 'dont have permission';
             echo '<script language="javascript">';
             echo 'alert("dont have permission");';
             echo 'window.history.back();location.reload();';
             echo '</script>';
         }

?>