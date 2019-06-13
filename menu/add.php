<?php
include('../config/dbconnection.php');
session_start();
  if(isset($_SESSION["username"]) && isset($_SESSION["company_id"])){
	        
			if(isset($_POST['submit'])){
				$display_in_menu     = $_POST["display_in_menu"];
				$menu_parent_id      = $_POST["menu_parent_id"];
				$menu_title          = $_POST["menu_title"];
				$menu_url            = $_POST["menu_url"];
				$menu_icon           = $_POST["menu_icon"];
				$status              = $_POST["status"];
				$createdby           = $_SESSION["id"];
				$createdon           = date("U");
				$sql    = "INSERT INTO tbl_menu (display_in_menu,menu_parent_id,menu_title,menu_url,menu_icon,status,createdby,createdon)
						   VALUES ('$display_in_menu','$menu_parent_id','$menu_title','$menu_url','$menu_icon','$status','$createdby','$createdon')";
						   
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
									<li class="breadcrumb-item active" aria-current="page">Create menu</li>
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
                                    <div class="col-lg-6">
                                            <div class="card shadow">
                                                <div class="card-header">
                                                    <h2 class="mb-0">Create Menu</h2>
                                                </div>
                                                <div class="card-body">
												<form  method="post" action="add.php">
													<div class="custom-control custom-checkbox mb-3">
														<input class="custom-control-input" name="display_in_menu" value="1" id="customCheck1" type="checkbox">
														<label class="custom-control-label form-label" for="customCheck1">Display In Menu</label>
													</div>
												    <div class="form-group row">
                                                        <label class="form-label">Menu parent id</label>
                                                        <select  id="select-countries" name="menu_parent_id" class="form-control select2" >
                                                            <option value="0" selected>None</option>
															 <?php $sql = "SELECT menu_title,id,menu_parent_id FROM tbl_menu";
															  $result = mysqli_query($conn, $sql);
																while($row = mysqli_fetch_array($result)){
																		?> <option value="<?php echo $row['id'];?>"> <?php echo $row['menu_title'];?></option> <?php
																}
															  ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">Menu title</label>
                                                        <input type="text" class="form-control" name="menu_title"  placeholder="Dashboard" required>
                                                    </div>
													<div class="form-group row">
                                                        <label class="form-label">Menu url</label>
                                                        <div class="input-group">
                                                            <input type="text"  name="menu_url" class="form-control" placeholder="eg. menu-add" required>
                                                        </div>
                                                    </div>
													<div class="form-group row">
                                                        <label class="form-label">Menu icon</label>
                                                        <input type="text" class="form-control" name="menu_icon" placeholder="fa fa-home" required>
                                                    </div>
                                                    
													<div class="form-group row">
                                                        <label class="form-label">Status</label>
                                                        <select name="status" id="select-countries" class="form-control custom-select" >
                                                            <option value="1" selected>Active</option>
															<option value="0" >Inactive</option>
                                                        </select>
                                                    </div>
                                                   
													<button type="submit" name="submit" class="btn btn-primary float-right" value="submit">Submit</button>
												</form>
                                                </div>
                                            </div>
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