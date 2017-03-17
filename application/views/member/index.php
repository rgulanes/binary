    <div ng-controller="memberCtrl" ng-init="onLoadUserInfo(<?php echo $user_info->user_id;?>)" ng-cloak>
     <!-- Static navbar -->
      <nav class="navbar navbar-default" style="border-radius: 0px!important;">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">LUYANG BAYA</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
           <!--    <li class="active"><a href="#">Home</a></li>
               -->
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Profile
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#" ng-click="onClickUpdateProfile()">Update Profile</a></li>
                  <li><a href="#" ng-click="onClickChangePassword()">Change Passwrod</a></li>
                </ul>
              </li>
              <li><a style="cursor: pointer;" id="view-tree">View Tree</a></li>
              <li><a href="#" ng-click="onclickCashout()">Cash out</a></li>
              <li><a href="#" ng-click="onclickLogout()">Log Out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-bank fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="withdrawal-panel"></div>
                                <div>Withdrawals for Today</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-cc fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="commission-panel"></div>
                                <div>Commissions as of Today</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-users fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="referrals-panel"></div>
                                <div>Referrals as of Today</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-cubes fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="treeSize-panel"></div>
                                <div>Tree Size as of Today</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="panel panel-primary">
              <div class="panel-heading"><b>User Information <i class="fa fa-user pull-right"></i> </b></div>
              <div class="panel-body">
                <h2> Welcome! <?php echo $user_info->first_name; ?> <?php echo $user_info->last_name; ?></h2>
                <p> Sponsored by  : <?php echo $sponsor_by->first_name;?> <?php echo $sponsor_by->last_name;?></p>
                <p> Gender  : <?php echo $user_info->gender;?></p>
                <p> Contact : <?php echo $user_info->contact;?></p>
                <p> Email   : <?php echo $user_info->email;?></p>
                <p> Address : <?php echo $user_info->address;?></p>
                <p> Date Joined : <?php echo date("M d, Y", strtotime($user_info->entered_on))?></p> 
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="panel panel-primary">
              <div class="panel-heading"><b> Total Savings <i class="fa fa-credit-card-alt pull-right" title="CASH OUT"></i></b></div>
              <div class="panel-body">
                <div class="container-fluid">
                  <div class="row">
                  <div class="col-lg-6 col-md-6">
                    <h2>Amount : </h2>

                  </div>
                  <div class="col-lg-6 col-md-6">
                    <h2 class="text-danger" ng-cloak>Php. {{user_coh}}</h2>

                  </div>
                  </div>
                </div>
                <div class="container-fluid">
                  <ul class="nav nav-pills">
                    <li class="active"><a data-toggle="pill" data-target="#userWithdrawals"><i class="fa fa-bank fa-fw"></i> Withdrawals</a></li>
                    <li><a data-toggle="pill" data-target="#userCoh"><i class="fa fa-cc fa-fw"></i> Cash On Hand</a></li>
                  </ul>
                  
                  <div class="tab-content ">
                    <div id="userWithdrawals" class="tab-pane fade in active">
                      <div class="row" style="margin-top: 10px;">
                        <div class="col-md-12 col-xs-12">
                          <table id="userWithdrawalsDataTable" class="table table-condensed" width="100%">
                            <thead>
                              <tr>
                                <th>Amount</th>
                                <th>Date Withdrawn</th>
                              </tr>
                            </thead>
                          </table>
                        </div>
                      </div>
                    </div>
                    <div id="userCoh" class="tab-pane fade">
                      <div class="row" style="margin-top: 10px;">
                        <div class="col-md-12 col-xs-12">
                          <table id="userCohDataTable" class="table table-condensed" width="100%">
                            <thead>
                              <tr>
                                <th>Amount</th>
                                <th>Date Commissioned</th>
                                <th>Note</th>
                              </tr>
                            </thead>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="panel panel-primary">
              <div class="panel-heading"><b>Left <span class="badge pull-right"> {{left_member_count}}</span></b></div>
              <div class="panel-body">
                      <table id="leftDataTable" class="table table-condensed" style="margin-top:13px;">
                        <thead>
                          <tr>
                            <th>&nbsp;</th>
                            <th>Name</th>
                            <th>Date Joined</th>
                          </tr>
                        </thead>
                      </table>
                
              </div>
            </div>

          </div>
          <div class="col-lg-6 col-md-6 col-sm-6">
             <div class="panel panel-primary">
              <div class="panel-heading"><b> Right <span class="badge pull-right"> {{right_member_count}}</span></b></div>
              <div class="panel-body">
                <table id="rightDataTable" class="table table-condensed" style="margin-top:13px;">
                <thead>
                  <tr>
                    <th>&nbsp;</th>
                    <th>Name</th>
                    <th>Date Joined</th>
                  </tr>
                </thead>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>  -->
      
    <div class="modal fade" id="position-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
        <div class="loginmodal-container">
         <div class="alert alert-danger" role="alert" ng-show="select_donwline">Please Select Available Downline</div>
         <div class="alert alert-danger" role="alert" ng-show="select_donwline_position">Please Select Available Position</div>
         
         <div class="alert alert-danger" role="alert" ng-show="position_error">Please Select Position!</div>
         <div class="alert alert-success" role="alert" ng-show="position_save">Save successfully</div>
          <label>Name : </label>
          <label>{{unposition_user}}</label>
          <form>
            <label>Position : </label>
            <label class="radio-inline">
              <input type="radio" name="optradio" ng-click="onChangePosition('left')">Left
            </label>
            <label class="radio-inline">
              <input type="radio" name="optradio"  ng-click="onChangePosition('right')">Right
            </label>
          </form>
          <br>
          <div ng-show="available_downline">
          <label>Available Downline : </label>
          <select  class="sponsor" ng-options="list.u_first_name +' '+ list.u_last_name for list in list_available_downline" 
           ng-model="selected_upline" ng-change="onCheckAvailablePosition(selected_upline)"></select>
          </div>
          <div ng-show="available_position">
            <label>Available Position : </label>
            <select  class="sponsor" ng-options="list_position.position_name  for list_position in available_list_position" 
             ng-model="selected_available_position"></select>
          </div>  

          <input type="submit" name="login" class="login loginmodal-submit" ng-click="onclickSavePosition()" value="Save">
         
        </div>
      </div>
    </div>



    <div class="modal fade" id="cash-out-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close"  ng-click="onClickCloseRequestedAmount()" >&times;</span>
            <h1 align="center">Cash Out</h1>
          </div>

          <div class="modal-body">
          <div class="alert alert-danger" role="alert" ng-show="show_cash_request_error">{{cash_request_message}}</div>
          <div class="alert alert-success" role="alert" ng-show="show_cash_request_success">{{cash_request_message}}</div>
          <div>
            <input type="text" name="requested-amount" ng-model="requested_amount" class="form-control" placeholder="Enter Amount">
          </div>
          <br>
            <button type="button" class="btn btn-primary" ng-click="onClickRequestedAmount()">Send Request</button>
          </div>
          <br>
        </div>
      </div>
    </div>


    <div class="modal fade" id="update-profile-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal">&times;</span>
            <h1 align="center">Update Profile</h1>
          </div>
          <div class="modal-body">
            <div class="alert alert-success" role="alert" ng-show="saveMessage">Save successfully</div>
            <form name="update-profile" ng-submit="onUpdateProfile()">
            
            <label>First Name:</label>
            <input type="text" name="requested-amount" ng-model="update_first_name" class="form-control" required placeholder="First Name">
            <br>
            <label>Last Name:</label>
            <input type="text" name="requested-amount" ng-model="update_last_name" class="form-control" required placeholder="Last Name">
            <br>
            <label>Gender:</label>
            <input type="text" name="requested-amount" ng-model="update_gender" class="form-control" required placeholder="Gender">
            <br>
            <label>Email:</label>
            <input type="email" name="requested-amount" ng-model="update_email" class="form-control" required placeholder="Email">
            <br>
            <label>Contact:</label>
            <input type="text" name="requested-amount" ng-model="update_contact" class="form-control" required placeholder="Contact">
            <br>
            <label>Address:</label>
            <input type="text" name="requested-amount" ng-model="update_address" class="form-control" required placeholder="Address">
            <br>
            <button type="submit" class="btn btn-primary">Save</button>
                      
            </form>

          </div>
          <br>
        </div>
      </div>
    </div>


    <div class="modal fade" id="change-password-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal">&times;</span>
            <h1 align="center">Change Password</h1>
          </div>
          <div class="modal-body">
            <div class="alert alert-success" role="alert" ng-show="saveMessage">Password change successfully</div>
            <form name="update-profile" ng-submit="onChangePassword()">
               <label>Current Password:</label>
              <input type="text" name="requested-amount" ng-model="current_password" class="form-control"  required>
              <br>
              <label>Enter New Password:</label>
              <input type="text" name="requested-amount" ng-model="new_password" class="form-control" required >
              <br>
              <button type="submit" class="btn btn-primary">Save New Password</button>
                      
            </form>

          </div>
          <br>
        </div>
      </div>
    </div>

   </div> <!-- /container -->