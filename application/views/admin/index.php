  <div ng-controller="adminCtrl" ng-cloak >
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
              <li><a href="#"  ng-click="onClickCashRequest()">Cash Request <span class="badge">{{cash_request_count}}</span></a></li>
              <li><a href="#"  data-toggle="modal" data-target="#code-modal">Generate Code</a></li>
              <li><a href="#" ng-click="onclickLogout()">Log Out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>


      <!-- Main component for a primary marketing message or call to action -->
    

      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6">

            <div class="panel panel-default">
              <div class="panel-heading"><b>User Information <i class="fa fa-user pull-right" title="view list"></i> </b></div>
              <div class="panel-body">
                <h2 > Welcome! <?php echo $user_info->first_name; ?> <?php echo $user_info->last_name; ?></h2>
                <p> Gender  : <?php echo $user_info->gender;?></p>
                <p> Contact : <?php echo $user_info->contact;?></p>
                <p> Email   : <?php echo $user_info->email;?></p>
                <p> Address : <?php echo $user_info->address;?></p>
                <p> Date Joined : <?php echo date("M d, Y", strtotime($user_info->entered_on))?></p> 
              </div>
            </div>

          </div>
          
          <div class="col-lg-6 col-md-6 col-sm-6">
             <div class="panel panel-default">
              <div class="panel-heading"><b>Code <i class="fa fa-eye pull-right" title="view list"></i></b></div>
              <div class="panel-body" style="max-height: 245px;overflow: auto;">
                  <table class="table" style="margin-top:13px;">
                    <thead>
                      <tr>
                        <th>Code</th>
                        <th>Used by</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr ng-repeat="list in list_code_generated">
                        <td>{{list.description}}</td>
                        <td>{{list.user_name}}</td>
                        <td>
                          <span class="label label-success" ng-if="list.status == 0">Available</span>
                          <span class="label label-danger" ng-if="list.status == 1">Used</span>
                        </td>
                      </tr>
                     

                    </tbody>
                  </table>
               
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid">
            <div class="panel panel-default">
              <div class="panel-heading"><b>Members <i class="fa fa-users pull-right" title="view list"></i> </b></div>
              <div class="panel-body" style="max-height: 500px;overflow: auto;">
                  <table class="table" style="margin-top:13px;">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                   
                        <th>Date Joined</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr ng-repeat="list in member_list">
                        <td>{{list.first_name}} {{list.last_name}}</td>
                        <td>{{list.gender}}</td>
                        <td>{{list.contact}}</td>
                        <td>{{list.email}}</td>
                        <td>{{list.address}}</td>
                        <td>{{list.entered_on | date:'medium'}}</td>
                        <td>{{list.user_name}}</td>
                        <td>{{list.password}}</td>
                        <td><button type="button" class="btn btn-primary" ng-click="onClickMember(list.user_id)"><i class="fa fa-pencil"></i></button></td>
                       
                      </tr>
                     

                    </tbody>
                  </table>
              </div>
            </div>
      </div>

    <div class="modal fade" id="cash-request-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog" style="width: auto;">
        <div class="loginmodal-container" style="width: 800px !important;max-width: 100%;">
          <h4>Request List</h4>
          <br>
          <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">New Request</a></li>
          </ul>

          <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
              <br>

              <table class="table" style="margin-top:13px;">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr ng-repeat="list in cash_request_list">
                        <td>{{list.first_name}} {{list.last_name}}</td>
                        <td>{{list.amount}}</td>
                        <td>{{list.date_requested | date:'medium'}}</td>
                        <td><button type="button" class="btn btn-primary" ng-click="onClickUpdateRequest(list.request_withdrawal_id)"><i class="fa fa-pencil"></i></button></td>
                      </tr>
                    </tbody>
                  </table>
            </div>
          </div>

          <button type="button" class="btn btn-danger" ng-click="onClickCloseCashRequest()">Close</button>
        </div>
      </div>
    </div>

    <div class="modal fade" id="code-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
        <div class="loginmodal-container">
             <input type="text" name="pass" ng-model="code_number" placeholder="How many codes?">
         
          <input type="submit" name="login" class="login loginmodal-submit" ng-click="onclickGenerateCode()" value="Generate">
          </form>
        </div>
      </div>
    </div>

    <div class="modal fade" id="members-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
        <div class="loginmodal-container" style="max-width:initial;">
        <h1>Update Profile</h1><br>
        <div class="alert alert-success" role="alert" ng-show="saveMessage">Save successfully</div>
        <div class="alert alert-danger" role="alert" ng-show="updateMemberError">Fill Required Fields</div>
         <div class="row">
                <div class="col-md-6 col-lg-6">
                  <form>
                    <span class="danger">(Required)</span>
                    <input type="text" style="text-transform: capitalize;" name="user" ng-model="firstname" placeholder="First Name" autofocus >
                    <span class="danger">(Required)</span>
                    <input type="text" style="text-transform: capitalize;" name="pass" ng-model="lastname" placeholder="Last Name" >
                    <span class="danger">(Required)</span>
                    <input type="text" style="text-transform: capitalize;" name="pass" ng-model="gender" placeholder="Gender" >
                    <span class="danger">(Required)</span>
                    <input type="text" name="pass" maxlength="11" ng-model="contact" placeholder="Contact" >
                    
                    <input type="text" name="pass" ng-model="email" placeholder="Email">
                  </form>
                </div>
                <div class="col-md-6 col-lg-6">
                  <form>
                    <span class="danger">(Required)</span>
                    <input type="text"  style="text-transform: capitalize;" name="pass" ng-model="address" placeholder="Address" >
                    <span class="danger">(Required)</span>
                    <select  class="sponsor" name="repeatSelect" id="repeatSelect" ng-model="sponsor">
                        <option value="" disabled selected>Select Sponsor</option>
                        <option ng-repeat="list in member_list" value="{{list.user_id}}">{{list.first_name}} {{list.last_name}}</option>
                      </select>
                     <span class="danger">(Required)</span> 
                    <input type="text" name="user" ng-model="username" placeholder="Username" >
                    <span class="danger">(Required)</span>
                    <input type="password" name="pass" ng-model="password" placeholder="Password" >
                    <input type="submit" name="login" class="login loginmodal-submit" value="Save" ng-click="onUpdateMember('<?php echo base_url();?>')">

                    </form>
                </div>
              </div>
        </div>
      </div>
    </div>

   
    </div>
       
    

    </div> <!-- /container -->