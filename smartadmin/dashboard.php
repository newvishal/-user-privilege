<?php
session_start();
  if(isset($_SESSION["username"]) && isset($_SESSION["company_id"])){
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">


<head>
 <?php require_once('../common/header.php');?>

</head>

<body class="app sidebar-mini rtl" >
	<div id="global-loader" ></div>
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
							<!-- Form -->
							<!-- <form class="navbar-search navbar-search-dark form-inline ml-lg-auto">
								<div class="form-group mb-0">
									<div class="input-group input-group-alternative">
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="fas fa-search"></i></span>
										</div><input class="form-control" placeholder="Search" type="text">
									</div>
								</div>
							</form> -->
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
									<li class="breadcrumb-item active" aria-current="page">Marketing Dashboard</li>
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
								<div class="col-md-6 col-lg-6 col-xl-3">
										<div class="card p-3 px-4 shadow">
											<div>Total revenue</div>
											<div class="py-2 m-0 text-center h1 text-green">$14,320</div>
											<div class="d-flex">
												<small class="text-muted">Income</small>
												<div class="ml-auto"><i class="fa fa-caret-up text-green"></i> 4%</div>
											</div>
										</div>
								</div>
								<div class="col-md-6 col-lg-6 col-xl-3">
									<div class="card p-3 px-4 shadow">
										<div>Order status</div>
										<div class="py-2 m-0 text-center h1 text-red">738</div>
										<div class="d-flex">
											<small class="text-muted">New order</small>
											<div class="ml-auto">
											<i class="fa fa-caret-down text-red"></i> 10%</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-6 col-xl-3">
									<div class="card p-3 px-4 shadow">
										<div>Income status</div>
										<div class="py-2 m-0 text-center h1 text-blue">$3,205</div>
										<div class="d-flex">
											<small class="text-muted">New income</small>
											<div class="ml-auto"><i class="fa fa-caret-down text-red"></i> 0%</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-6 col-xl-3">
									<div class="card p-3 px-4 shadow">
										<div>Customer status</div>
										<div class="py-2 m-0 text-center h1 text-yellow">118</div>
										<div class="d-flex">
											<small class="text-muted">New users</small>
											<div class="ml-auto">
											<i class="fa fa-caret-up text-green"></i> 3%</div>
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
										<p class="float-right text-sm font-weight-500"><a href="www.templatespoint.net"></a></p>
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
	
	<!-- Back to top -->
	<?php require_once('../common/footer.php');?>

</body>

  
</html>
<?php }else{
       header("Location:index.php");
}?>