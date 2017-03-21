<!-- <video id="bgvid" playsinline autoplay muted loop>
  WCAG general accessibility recommendation is that media such as background video play through only once. Loop turned on for the purposes of illustration; if removed, the end of the video will fade in the same way created by pressing the "Pause" button 
<source src="<?php echo base_url();?>assets/video/variousways.mp4" type="video/webm">
</video> -->
<div class="login" ng-controller="loginCtrl" ng-init="onLoadUrl('<?php echo base_url();?>')" ng-cloak>
	<br>
<!-- 	<div class="container-fluid pull-right">
	  	<a href="#" class="btn btn-default" data-toggle="modal" data-target="#login-modal"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
	  	<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#add-modal"><i class="fa fa-user" aria-hidden="true"></i> New Member</a>
	</div> -->

	<!-- <div class="container-fluid pull-left branding">
	  	<a href="http://www.luyabaya.com"><i class="fa fa-leaf fa-fw" aria-hidden="true"></i> LUYABAYA | Organic Liniment</a>
	</div>
 -->
		<div class="middlePage">
			<div class="page-header">
			  <h1 class="branding"><a href="http://www.luyabaya.com"><i class="fa fa-leaf fa-fw" aria-hidden="true"></i>LUYABAYA |<small> Organic Liniment</small></a></h1>
			</div>

			<div class="panel panel-warning">
				<div class="panel-body">
				  	<div class="row">
						<div class="col-md-5" >
							<div class="row">
								<br>
								<div class="col-xs-12 text-center">
	                                <h2 id="runtime"></h2>
	                                <h4><i class="fa fa-clock-o fa-fw"></i> Time Today</h4>
	                            </div>
							</div>
						</div>
						<div class="col-md-7" style="border-left:2px solid #efec96; height:160px">
							<form class="form-horizontal" ng-submit="onclickLogin('<?php echo base_url();?>')">
								<fieldset>
								  <input id="textinput" name="textinput" type="text" placeholder="Username" ng-model="_username" class="form-control input-md">
								  <br>	
								  <input id="textinput" name="textinput" type="password" placeholder="Password" ng-model="_password" class="form-control input-md">
								  <div class="spacing"><a href="#" data-toggle="modal" data-target="#add-modal"><small> Add New Member?</small></a><br/></div>
								  <button id="singlebutton" type="submit" name="singlebutton" class="btn btn-warning btn-sm pull-right">Sign In</button>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="alert alert-danger" role="alert" ng-show="errorMessage">Login Failed!</div>
		</div>


    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal">&times;</span>
        		 <h>Login</h1>
          </div>
          <div class="modal-body">
            <div class="alert alert-success" role="alert" ng-show="saveMessage">Password change successfully</div>
             
               <form name="login" ng-submit="onclickLogin('<?php echo base_url();?>')">
               	<div class="form-group">
				    <label for="usr">Username</label>
					<input type="text" name="user" class="form-control" ng-model="_username" placeholder="Username" autofocus>
				</div>	
				<div class="form-group">
				    <label for="usr">Password</label>
					<input type="password" name="pass" class="form-control" ng-model="_password" placeholder="Password">
				</div>	
				<button type="submit" name="login" class="btn btn-primary">Login</button>
			  </form>
          	</div>
          <br>
        </div>
      </div>
    </div>

    <div class="modal fade" id="add-modal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal">&times;</span>

           	<h3 align="center" ng-show="enterCode">Enter Code</h3> 	
            <h3 align="center" ng-hide="enterCode">Add Employee</h3>
          </div>
          <div class="modal-body">
            	<div ng-hide="enterCode">
            		<div class="alert alert-danger" role="alert" ng-show="createdAccountError">Max account already created!</div>
					<div class="alert alert-success" role="alert" ng-show="saveMessage">Save successfully</div>
					<div class="alert alert-danger" role="alert" ng-show="newMemberError">Fill Required Fields <b>{{_errorMessage}}</b></div>
					<form name="add-employee" ng-submit="onSaveMember('<?php echo base_url();?>')">
						<div class="row">
							<div class="col-md-6 col-lg-6">
									<div class="form-group">
									    <label for="usr">First Name:</label>
										<input class="form-control" required type="text" name="user" ng-model="firstname" placeholder="First Name" autofocus >
								    </div>	
									<div class="form-group">
									    <label for="usr">Last Name:</label>
										<input class="form-control" required type="text" name="pass" ng-model="lastname" placeholder="Last Name" >
									</div>	
									<div class="form-group">
									    <label for="usr">Gender:</label>
										<input class="form-control" required type="text" name="pass" ng-model="gender" placeholder="Gender" >
									</div>	
									<div class="form-group">
									    <label for="usr">Contact Number :</label>
										<input class="form-control" required type="text" name="pass" maxlength="11" ng-model="contact" placeholder="Contact" >
								    </div>	
									<div class="form-group">
									    <label for="usr">Email:</label>
										<input class="form-control"  type="text" name="pass" ng-model="email" placeholder="Email">
									</div>	
									<div class="form-group">
									    <label for="usr">Address:</label>
										<input class="form-control" required type="text"  name="pass" ng-model="address" placeholder="Address" >
								  </div>	
							</div>
							<div class="col-md-6 col-lg-6">
									<div class="form-group">
									    <label for="usr">Username:</label>
										<input class="form-control" required type="text" name="user" ng-model="username" placeholder="Username" >
									</div>	
									<div class="form-group">
									    <label for="usr">Password:</label>
										<input class="form-control" required type="password"  ng-model="password" placeholder="Password" >
								  	</div>
								    <div class="form-group">
								    <label for="usr">Select Sponsor:</label>
									<ui-select ng-model="sponsor.selected" ng-required="true" title="Choose an sponsor" ng-change="onChangeSponsor('<?php echo base_url();?>')">
									    <ui-select-match placeholder="Search Sponsor...">{{$select.selected.full_name}}</ui-select-match>
									    <ui-select-choices repeat="list in member_list  | propsFilter: {full_name: $select.search, user_name: $select.search}"" >
									      <small>
									      <div>Name: {{list.full_name}}</div>
									      <div>Username:  {{list.user_name}}</div>
									      <br>
									      </small>
									    </ui-select-choices>
									</ui-select>
									</div>

									<div class="form-group">
								    	<label for="singleSelect">Select Sponsor Position</label><br>
									    <select name="singleSelect" class="form-control" required ng-model="sponsor_position" ng-change="onChangePosition('<?php echo base_url();?>',sponsor_position)">
									      <option value="left">Left</option>
									      <option value="right">Right</option>
									    </select>
								    </div>

									<div ng-show="available_downline">
									    <div class="form-group">
									    <label for="usr">Select Available Downline:</label>
										<ui-select ng-model="upline.selected"  on-select="onCheckAvailablePosition('<?php echo base_url();?>',$item)" ng-required="true" title="Choose an upline">
										    <ui-select-match placeholder="Search Available Downline...">{{$select.selected.full_name}}</ui-select-match>
										    <ui-select-choices repeat="list in list_available_downline | propsFilter: {full_name: $select.search, user_name: $select.search}"" >
										      <small>
										      <div>Name: {{list.full_name}}</div>
										      <div>Username: {{list.u_username}}</div>
										      <br>
										      </small>
										    </ui-select-choices>
										</ui-select>
										</div>

										<div class="form-group">
									    	<label for="singleSelect">Select Downline Position</label><br>
										    <select name="downline_position" class="form-control" id="downline_position" ng-model="downline_position">
										      <option ng-repeat="position in available_list_position" value="{{position.position_name}}">{{position.position_name}}</option>
										    </select>
									    </div>
										
									
								    </div>
										
							</div>
						</div>
						<br>
						<button type="submit" class="btn btn-primary center-block" id="save-new-member" ng-hide="save_buttton_status">Save</button>
					</form>		

				</div>

				<div ng-show="enterCode">
					<div class="alert alert-danger" role="alert" ng-show="errorCode">Invalid Code!</div>
		  			<input type="text" name="code" ng-model="code" class="form-control" placeholder="ENTER CODE">
		  			<br>
		  			<button type="button" class="btn btn-primary center-block" ng-click="onCheckCode('<?php echo base_url();?>')">Check</button>
		  			<!-- <input type="submit" name="login" class="login loginmodal-submit" value="CHECK" ng-click=""> -->
		  		</div>

           	

          </div>
          <br>
        </div>
      </div>
    </div>

</div>
