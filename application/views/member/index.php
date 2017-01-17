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
              <li><a href="">Cash out</a></li>
              <li><a href="#" ng-click="onclickLogout()">Log Out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="container-fluid" ng-show="notAssigned">
        <div class="panel panel-danger">
              <div class="panel-heading"><b> Please Assign  <i class="fa fa-exclamation-triangle pull-right"></i> </b></div>
              <div class="panel-body">
                <table class="table" style="margin-top:13px;">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr ng-repeat="list in not_assigned">
                        <td>{{list.u_first_name}} {{list.u_last_name}}</td>
                        <td>{{list.u_gender}}</td>
                        <td>{{list.u_contact}}</td>
                        <td>{{list.u_email}}</td>
                        <td>{{list.u_address}}</td>
                        <td><button type="button" class="btn btn-primary" ng-click="onShowModal(list.u_user_id,list.u_first_name,list.u_last_name)"><i class="fa fa-pencil"></i></button></td>
                      </tr>
                    </tbody>
                  </table>

              </div>
        </div>
      </div>

      <div class="container-fluid">
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
                    <h2 class="text-danger" ng-cloak>{{user_coh}}</h2>

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
      <div class="container-fluid">
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
      </div> 
      <div class="container-fluid">
        <div class="panel panel-primary">
              <div class="panel-heading"><b>People Sponsored  <i class="fa fa-users pull-right"></i> </b></div>
              <div class="panel-body">
                <table class="table" style="margin-top:13px;">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                     
                        <th>Date Joined</th>
                       
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr ng-repeat="list in sponsored_member">
                        <td>{{list.first_name}} {{list.last_name}}</td>
                        <td>{{list.gender}}</td>
                        <td>{{list.contact}}</td>
                        <td>{{list.email}}</td>
                        <td>{{list.address}}</td>
                        <td>{{list.entered_on | date:'medium'}}</td>
                        <td><button type="button" class="btn btn-primary"><i class="fa fa-pencil"></i></button></td>
                       
                      </tr>
                     

                    </tbody>
                  </table>

              </div>
        </div>
      </div>


    <div class="modal fade" id="position-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
        <div class="loginmodal-container">
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
  


   


      

      
    

    </div> <!-- /container -->