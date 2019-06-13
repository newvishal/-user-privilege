<?php
include('../config/dbconnection.php');
session_start();
  if(isset($_SESSION["username"]) && isset($_SESSION["company_id"])){
            if(isset($_GET['id'])){
                    $sql = "SELECT group_title,id,group_permission,status FROM tbl_group where id=".$_GET['id'];
                    $allgroups = mysqli_query($conn, $sql);
                    $rowcount = mysqli_num_rows($allgroups);
                    if($rowcount > 0){
                            $groupsByid = mysqli_fetch_array($allgroups);
                            // var_dump($groupsByid);exit;
                            
                    }else{
                        echo "<script type='text/javascript'>alert('invalid request'); window.history.go(-2);</script>";
                    }
            }

	       if(isset($_POST['update'])){
            $group_title         = $_POST["group_title"];
            $status              = $_POST["status"];
            $updatedby           = $_SESSION["id"];
            $updatedon           = date("U");
            $group_permission    = implode(',',$_POST["parmission"]);
            $sql    = "UPDATE tbl_group SET group_title= '$group_title', group_permission= '$group_permission', status= '$status', updatedby= '$updatedby',  updatedon= '$updatedon'  WHERE id=".$_POST["hid"];
				
                    //    var_dump($sql);exit;
            $result =  mysqli_query($conn,$sql);
            // var_dump($result);exit;
            if($result){
                echo "<script type='text/javascript'>alert('Data Saved Successfully'); window.location.replace('". $install_url ."');</script>";
            }else{
                echo "<script type='text/javascript'>alert('Error Occurd...'); window.location.replace('". $install_url ."');</script>";
            }
        }

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
	<?php require_once('../common/header.php');?>
</head>
<body class="app sidebar-mini rtl" >
	<div id="global-loader"></div>
	<div class="page">
		<div class="page-main">
			<!-- Sidebar menu-->
				<?php require_once('../common/menu.php');?>
			<!-- Sidebar menu-->
			<!-- app-content-->
			<div class="app-content ">
				<div class="side-app">
					<div class="main-content">
						<div class="p-2 d-block d-sm-none navbar-sm-search">
							
						</div>
						<!-- Top navbar -->
						<nav class="navbar navbar-top  navbar-expand-md navbar-dark" id="navbar-main">
							 <?php require_once('../common/topmenu.php');?>
						</nav>
						<!-- Top navbar-->

						<!-- Page content -->
						<div class="container-fluid pt-8">
							<div class="page-header mt-0 shadow p-3">
								<ol class="breadcrumb mb-sm-0">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Edit Group</li>
								</ol>
								<!-- <div class="btn-group mb-0">
									<button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#"><i class="fas fa-plus mr-2"></i>Add new Page</a>
										<a class="dropdown-item" href="#"><i class="fas fa-eye mr-2"></i>View the page Details</a>
										<a class="dropdown-item" href="#"><i class="fas fa-edit mr-2"></i>Edit Page</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i> Settings</a>
									</div>
								</div> -->
							</div>
							<div class="row ">
                                    <div class="col-lg-12">
                                         <form method="post" action="edit.php?id=<?=$_GET['id'];?>">
                                            <div class="card shadow">
                                                <div class="card-header">
                                                    <h2 class="mb-0">Group Management</h2>
                                                    <input type="text" name="hid" value="<?=$_GET['id'];?>" hidden>
                                                    <div class="form-group col-md-4 float-right">
                                                        <label class="form-label">Status</label>
                                                        <select name="status" id="select-countries" class="form-control custom-select" >
                                                            <option value="1" <?php echo ($groupsByid['status'] == 1)? 'selected':'';?> >Active</option>
															<option value="0" <?php echo ($groupsByid['status'] == 0)? 'selected':'';?>>Inactive</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-4 float-right">
                                                        <label class="form-label">Group title</label>
                                                        <input type="text" class="form-control" name="group_title" value="<?=$groupsByid['group_title'];?>"  placeholder="Group Name" required>
                                                    </div>
                                                    <div class="form-group pt-5">
                                                        <div class="custom-switches-stacked">
                                                            <label class="custom-switch">
                                                                <input type="checkbox" id="forallcheck" name="" value="" class="custom-switch-input" checked="">
                                                                <span class="custom-switch-indicator"></span>
                                                                <span class="custom-switch-description text-success"> Check All</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="card-body">
                                                    
                                                        <div class="row">
                                                                <?php 
                                                                        $sql = "SELECT menu_title,id,display_in_menu,menu_url,menu_parent_id,menu_icon FROM tbl_menu where menu_parent_id = 0";
                                                                        $result = mysqli_query($conn, $sql);
                                                                        $allExplodeMenus = explode(',',$groupsByid['group_permission']);
                                                                        // var_dump($allExplodeMenus);exit;
                                                                        while($row = mysqli_fetch_array($result)){
                                                                            ?> <div class="col-md-2" style="border-right:1px solid #dae0ef;">
                                                                                            <div class="form-group">
                                                                                                        <div class="custom-switches-stacked">
                                                                                                            <label class="custom-switch">
                                                                                                                <input type="checkbox" name="parmission[]" value="<?php echo $row['menu_url'];?>" class="custom-switch-input" <?php echo in_array($row['menu_url'],$allExplodeMenus)? 'checked="" ':''; ?> >
                                                                                                                <span class="custom-switch-indicator"></span>
                                                                                                                <span class="custom-switch-description text-warning"> <?php echo $row['menu_title'];?></span>
                                                                                                            </label>
                                                                                                        </div>
                                                                                            </div>
                                                                            <?php
                                                                                        $sqlsub = "SELECT menu_title,id,display_in_menu,menu_url,menu_parent_id,menu_icon FROM tbl_menu where menu_parent_id = ". $row['id'];
                                                                                        $subresult = mysqli_query($conn, $sqlsub);
                                                                                        while($subrow = mysqli_fetch_array($subresult)){
                                                                            ?> 
                                                                                                <div class="form-group">
                                                                                                        <div class="custom-switches-stacked">
                                                                                                            <label class="custom-switch">
                                                                                                                <input type="checkbox" name="parmission[]" value="<?php echo $subrow['menu_url'];?>" class="custom-switch-input" <?php echo in_array($subrow['menu_url'],$allExplodeMenus)? 'checked="" ':''; ?>>
                                                                                                                <span class="custom-switch-indicator"></span>
                                                                                                                <span class="custom-switch-description"> <?php echo $subrow['menu_title'];?></span>
                                                                                                            </label>
                                                                                                        </div>
                                                                                                </div>
                                                                            <?php
                                                                                    
                                                                            }echo '</div>';
                                                                                    
                                                                        }
                                                                ?>
                                                            
                                                        </div>
                                                        <button value="update" name="update" class="btn btn-primary">Update</button>
                                                   
                                                </div>
                                            </div>
                                        </form>
                                    </div>
							</div>
							

							<!-- Footer -->
							<footer class="footer">
								<div class="row align-items-center justify-content-xl-between">
									<div class="col-xl-6">
										<div class="copyright text-center text-xl-left text-muted">
											<p class="text-sm font-weight-500">Copyright <?php echo date('Y');?> © All Rights Reserved.</p>
										</div>
									</div>
									<div class="col-xl-6">
										<p class="float-right text-sm font-weight-500"><a href="#"></a></p>
									</div>
								</div>
							</footer>
							<!-- Footer -->
						</div>
					</div>
				</div>
			</div>
			<!-- app-content-->
		</div>
	</div>
	
	<?php require_once('../common/footer.php'); ?>

</body>

  
</html>
<?php }else{
       header("Location:index.php");
}?>