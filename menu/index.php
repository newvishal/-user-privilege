<?php
include('../config/dbconnection.php');
session_start();
  if(isset($_SESSION["username"]) && isset($_SESSION["company_id"])){
	
			// var_dump($allmenu);exit;	

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
									<li class="breadcrumb-item active" aria-current="page"> Menu List</li>
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
							<div class="row">
								<div class="col-md-12">
									<div class="card shadow">
										<div class="card-header">
											<h2 class="mb-0">Menu List</h2>
										</div>
										<div class="card-body">
											<div class="table-responsive">
												<table id="example" class="table  table-bordered w-100 text-nowrap">
													<thead>
														<tr>
															<th class="wd-15p">Menu title</th>
															<th class="wd-15p">menu url</th>
															<th class="wd-20p"> parent menu</th>
															<th class="wd-15p">menu icon</th>
															<th class="wd-10p">display in menu</th>
															<th class="wd-25p">status</th>
															<th class="wd-25p">Action</th>
														</tr>
													</thead>
													<tbody>
														<?php 
														$sql = "SELECT menu_title,id,display_in_menu,menu_url,menu_parent_id,status,menu_icon FROM tbl_menu ORDER BY id DESC";
														// var_dump($sql);exit;
														$allmenus = mysqli_query($conn, $sql);
														while($r = mysqli_fetch_assoc($allmenus)){?>
															
														<tr>
															<td><?php echo $r['menu_title'];?></td>
															<td><?=$r['menu_url'];?></td>
															<td><?php 
																	$psql = "SELECT menu_title FROM tbl_menu where id=".$r['menu_parent_id'];
																	$parent_name = mysqli_query($conn, $psql);
																	$parent_title = mysqli_fetch_assoc($parent_name);
																	echo $parent_title['menu_title'];
																?></td>
															<td><i class="<?=$r['menu_icon'];?>"></i></td>
															<td><?php echo ($r['display_in_menu'] == 1)? '<i class="fe fe-eye text-success"></i>':'<i class="fe fe-eye-off text-warning"></i>';?></td>
															<td><?php echo ($r['status'] == 1)? '<span class="badge  badge-lg badge-pill badge-success">Active</span>':'<span class="badge  badge-lg badge-pill badge-danger">Inactive</span>';?></td>
															<td>
																<a href="edit.php?id=<?=$r['id'];?>" class="btn btn-primary btn-sm"><i class="fe fe-edit"></i></a>
																<a href="delete.php?id=<?=$r['id'];?>" onclick="return confirm('Are you sure you want to delete this item?');" class="btn btn-danger btn-sm"><i class="fe fe-trash"></i></a>
															</td>
														</tr>
														<?php }?>
													</tbody>
												</table>
											</div>
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