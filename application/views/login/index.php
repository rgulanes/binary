<video id="bgvid" playsinline autoplay muted loop>
  <!-- WCAG general accessibility recommendation is that media such as background video play through only once. Loop turned on for the purposes of illustration; if removed, the end of the video will fade in the same way created by pressing the "Pause" button  -->
<source src="<?php echo base_url();?>assets/video/variousways.mp4" type="video/webm">
</video>
<div class="login" ng-controller="loginCtrl" ng-init="onLoadUrl('<?php echo base_url();?>')" ng-cloak>
	<br>
	<div class="container-fluid pull-right">
	  <a href="#" class="btn btn-default" data-toggle="modal" data-target="#login-modal"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
	  <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#add-modal"><i class="fa fa-user" aria-hidden="true"></i> New Member</a>
	</div>

	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	  <div class="modal-dialog">
			<div class="loginmodal-container">
				<h1>Login</h1><br>
				<div class="alert alert-danger" role="alert" ng-show="errorMessage">Login Failed!</div>
			  <form>
				<input type="text" name="user" ng-model="_username" placeholder="Username" autofocus>
				<input type="password" name="pass" ng-model="_password" placeholder="Password">
				<input type="submit" name="login" class="login loginmodal-submit" ng-click="onclickLogin('<?php echo base_url();?>')" value="Login">
			  </form>
			</div>
		</div>
	</div>
	<div class="modal fade" id="add-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	  <div class="modal-dialog">
	  		
			<div class="loginmodal-container" style="max-width: 500px!important;">
				<div ng-hide="enterCode">
					<h1>New Member</h1><br>
					<div class="alert alert-success" role="alert" ng-show="saveMessage">Save successfully</div>
					
					
					<div class="row">
						<div class="col-md-6 col-lg-6">
							<form>
								<input type="text" style="text-transform: capitalize;" name="user" ng-model="firstname" placeholder="First Name" autofocus>
								<input type="text" style="text-transform: capitalize;" name="pass" ng-model="lastname" placeholder="Last Name">
								<input type="text" style="text-transform: capitalize;" name="pass" ng-model="gender" placeholder="Gender">
								<input type="text" name="pass" maxlength="11" ng-model="contact" placeholder="Contact">
								<input type="text" name="pass" ng-model="email" placeholder="Email">
								<input type="text"  style="text-transform: capitalize;" name="pass" ng-model="address" placeholder="Address">
								
							</form>
						</div>
						<div class="col-md-6 col-lg-6">
							<form>
								<select  class="sponsor" name="repeatSelect" id="repeatSelect" ng-model="sponsor">
							   		<option value="" disabled selected>Select Sponsor</option>
							      <option ng-repeat="list in member_list" value="{{list.user_id}}">{{list.first_name}} {{list.last_name}}</option>
							    </select>
								  
								<input type="text" name="user" ng-model="username" placeholder="Username">
								<input type="password" name="pass" ng-model="password" placeholder="Password">
								<input type="submit" name="login" class="login loginmodal-submit" value="Save" ng-click="onSaveMember('<?php echo base_url();?>')">

						  	</form>
						</div>
					</div>
				</div>
				<div ng-show="enterCode">
					<div class="alert alert-danger" role="alert" ng-show="errorCode">Invalid Code!</div>
		  			<input type="text" name="code" ng-model="code" placeholder="ENTER CODE">
		  			<input type="submit" name="login" class="login loginmodal-submit" value="CHECK" ng-click="onCheckCode('<?php echo base_url();?>')">
		  		</div>	
			</div>
		</div>
	</div>
</div>
