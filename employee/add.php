<?php
include('../config/dbconnection.php');
session_start();
  if(isset($_SESSION["username"]) && isset($_SESSION["company_id"])){
	        
			if(isset($_POST['submit'])){
                $company_id          = $_POST["company_id"];
                $group_id          = $_POST["group_id"];
				$emp_name            = $_POST["emp_name"];
				$dob                 = $_POST["dob"];
				$gender              = $_POST["gender"];
				$mobile              = $_POST["mobile"];
                $email               = $_POST["email"];
                $pan                 = $_POST["pan"];
				$adhar_card_no       = $_POST["adhar_card_no"];
				$createdby           = $_SESSION["id"];
                $createdon           = date("U");
               
                $checksql       = "SELECT id FROM tbl_employee ORDER BY id DESC LIMIT 1";
                $checkresult    = mysqli_query($conn, $checksql);
                $row            = mysqli_fetch_array($checkresult);
                if($row['id'] > 0){
                    $foradd = $row['id'] + 1; 
                    $emp_code       =  'vitesseio-' .$foradd;
                }else{
                    $emp_code       =  'vitesseio-1' ;
				}
				
				$sql   = "INSERT INTO tbl_employee (company_id,group_id,emp_code,emp_name,dob,gender,mobile,email,pan,adhar_card_no,createdby,createdon)
						  VALUES ('$company_id','$group_id','$emp_code','$emp_name','$dob','$gender','$mobile','$email','$pan','$adhar_card_no','$createdby','$createdon')";
                // var_dump($sql);exit;
                $result =  mysqli_query($conn,$sql);
                // var_dump($result);exit;
            //    var_dump($result);exit;
				if($result){
					$emp_id = mysqli_insert_id($conn);
					// var_dump($emp_id);
                    $password = hash('sha256',$mobile);
                    $sqlsecondtable = "INSERT INTO tbl_users (company_id,group_id,emp_id,username,mobile,password,status,type,is_approved,createdby,createdon)
                                       VALUES ('$company_id','$group_id','$emp_id','$email','$mobile','$password','1','user','1','$createdby','$createdon')";
						 	//  var_dump($sqlsecondtable); 
						   $finalresult =  mysqli_query($conn,$sqlsecondtable);
						//   var_dump(mysqli_error($conn));exit;
							// var_dump($finalresult);
                            if($finalresult){
                                echo "<script type='text/javascript'>alert('Data Saved Successfully'); window.location.replace('". $install_url ."');</script>";
							}else{
                                echo "<script type='text/javascript'>alert('second Error Occurd...'); window.location.replace('". $install_url ."');</script>";
							}
				}else{
					echo "<script type='text/javascript'>alert('first Error Occurd...'); window.location.replace('". $install_url ."');</script>";
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
				<?php include('../common/menu.php');?>
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
									<li class="breadcrumb-item active" aria-current="page">Add Employee</li>
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
                                                    <h2 class="mb-0">Add Employee</h2>
                                                </div>
                                                <div class="card-body">
												<form method="post" action="add.php">
												    <div class="form-group row">
                                                        <label class="form-label">Company Name</label>
                                                        <select  id="select-countries" name="company_id" class="form-control select2" required>
                                                            <option value="" selected>None</option>
															 <?php $sql = "SELECT company_name,id FROM tbl_company";
															  $result = mysqli_query($conn, $sql);
																while($row = mysqli_fetch_array($result)){
																		?> <option value="<?php echo $row['id'];?>"> <?php echo $row['company_name'];?></option> <?php
																}
															  ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">Employee Name</label>
                                                        <input type="text" class="form-control" name="emp_name"  placeholder="Ex.ram" required>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">Group Permission</label>
                                                        <select  id="select-countries" name="group_id" class="form-control select2" required>
                                                            <option value="" selected>None</option>
															 <?php $sql = "SELECT group_title,id FROM tbl_group";
															  $result = mysqli_query($conn, $sql);
																while($row = mysqli_fetch_array($result)){
																		?> <option value="<?php echo $row['id'];?>"> <?php echo $row['group_title'];?></option> <?php
																}
															  ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">DOB</label>
                                                        <input type="date" class="form-control" name="dob"  placeholder="" required>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">Gender</label>
                                                        <select  id="select-countries" name="gender" class="form-control select2" >
                                                            <option value="male">Male</option>
                                                            <option value="female">Female</option>
                                                        </select>
                                                    </div>
													<div class="form-group row">
                                                        <label class="form-label">Mobile</label>
                                                        <div class="input-group">
                                                            <input type="number"  name="mobile" class="form-control" placeholder="eg. 8417805458" required>
                                                        </div>
                                                    </div>
													<div class="form-group row">
                                                        <label class="form-label">Email</label>
                                                        <input type="email" class="form-control" name="email" placeholder="Ex.vishalsingh1818@gmail.com" required>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">PAN</label>
                                                        <div class="input-group">
                                                            <input type="number"  name="pan" class="form-control" placeholder="eg. 8417805458" >
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="form-label">Aadhar</label>
                                                        <div class="input-group">
                                                            <input type="text"  name="adhar_card_no" class="form-control" placeholder="eg. 8417-8054-5815" >
                                                        </div>
                                                    </div>
													<!-- <div class="form-group row">
                                                        <label class="form-label">Status</label>
                                                        <select name="status" id="select-countries" class="form-control custom-select" >
                                                            <option value="1" selected>Active</option>
															<option value="0" >Inactive</option>
                                                        </select>
                                                    </div> -->
                                                   
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