<?php include('../config/baseurl.php');?>
<?php include('../config/dbconnection.php');?>
<?php include('../config/permission.php');?>
<?php 
		//  session_start();
		
		 $sql = "SELECT menu_title,id,display_in_menu,menu_url,menu_parent_id,menu_icon FROM tbl_menu where menu_parent_id = 0";
		 $allmenu = mysqli_query($conn, $sql);
		 $sqlForselectAssignGroupMenu = "SELECT group_title,group_permission FROM tbl_group where id =". $_SESSION["group_id"];
		//  var_dump($sqlForselectAssignGroupMenu);exit;
		 $AssignMenus	 = mysqli_query($conn, $sqlForselectAssignGroupMenu);
		 $getAllmenus 	 = mysqli_fetch_array($AssignMenus);
		 $allPermissionMenuInArray = explode(',',$getAllmenus['group_permission']);
		//  var_dump($allPermissionMenuInArray);exit;
		
?>
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
	<div class="sidebar-img">
		<a class="navbar-brand" href="<?php echo BASE_URL .'smartadmin/dashboard.php';?>"><img alt="..." class="navbar-brand-img main-logo" src="../assets/img/brand/logo-dark.png"> <img alt="..." class="navbar-brand-img logo" src="assets/img/brand/logo.png"></a>
		<ul class="side-menu">
					<li class="slide">
						<a class="side-menu__item " href="<?php echo BASE_URL .'smartadmin/dashboard.php';?>"><i class="side-menu__icon fa fa-th-list"></i><span class="side-menu__label">Dashboard</span></a>
					</li>
		    <?php while($onemenu = mysqli_fetch_array($allmenu)){

			?>
					<li class="slide">
							<?php if(in_array($onemenu['menu_url'],$allPermissionMenuInArray)){?>
								<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon <?php echo $onemenu['menu_icon'];?>"></i><span class="side-menu__label"><?php echo $onemenu['menu_title'];?></span><i class="angle fa fa-angle-right"></i></a>
							<?php }?>
							<?php 
									$sqlsub = "SELECT menu_title,id,display_in_menu,menu_url,menu_parent_id,menu_icon FROM tbl_menu where display_in_menu =1 AND  menu_parent_id = ". $onemenu['id'];
									$subresult = mysqli_query($conn, $sqlsub);
									while($subrow = mysqli_fetch_array($subresult)){
										if(in_array($subrow['menu_url'] , $allPermissionMenuInArray)){
							?>
							<ul class="slide-menu">
								
								<li>
									<a class="side-menu__item" href="<?php echo BASE_URL . implode('/',explode('-',$subrow['menu_url'])). '.php';?>"><i class="side-menu__icon <?php echo $subrow['menu_icon'];?>"></i><?php echo $subrow['menu_title'];?></a>
								</li>
								
							</ul>
							<?php }
						}?>
					</li>
			<?php }?>
			<li>
				<a class="side-menu__item" href="#"><i class="side-menu__icon fa fa-question-circle"></i><span class="side-menu__label">Help & Support</span></a>
			</li>
		</ul>
	</div>
</aside>