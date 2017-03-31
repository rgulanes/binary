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
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Profile
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#" ng-click="onClickChangePassword()">Change Passwrod</a></li>
                </ul>
              </li>
              <li><a href="#"  ng-click="onClickMembers()">Members</a></li>
              <li><a href="#"  ng-click="onClickCashRequest()">Cash Request <span class="badge">{{cash_request_count}}</span></a></li>
              <li><a href="#"  data-toggle="modal" data-target="#code-modal">Generate Code</a></li>
              <li><a href="<?php echo base_url().('admin/Reports');?>">Reports</a></li>
              <li><a href="#" ng-click="onclickLogout()">Log Out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
  
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-money fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="rebates-board"></div>
                                <div>Rebates as of Today</div>
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
                                <i class="fa fa-hand-o-left fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="treeSize-left-board"></div>
                                <div>Total Left Members</div>
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
                                <i class="fa fa-hand-o-right fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="treeSize-right-board"></div>
                                <div>Total Right Members</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-hashtag fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="members-board"></div>
                                <div>Total Members as of Today</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-bank fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="withdrawal-board"></div>
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
                                <div class="huge" id="commission-board"></div>
                                <div>Total Pairings for Today</div>
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
                                <div class="huge" id="referrals-board"></div>
                                <div>Direct Referrals as of Today</div>
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
                                <i class="fa fa-check-square-o fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="withdrawal-forApproval-board"></div>
                                <div>Withdrawals for Approval</div>
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
             <div class="panel panel-primary">
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
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6">

            <div class="panel panel-primary">
              <div class="panel-heading"><b>Member Product Purchase <i class="fa fa-shopping-cart pull-right" title="view list"></i> </b></div>
              <div class="panel-body">
                <form name="searchProductMember"  ng-submit="onSearchProduct()">
                <div class="row">
                  <div class="col-md-5 col-lg-5">
                    <input type="date" class="form-control" name="from" ng-model="date_from">
                  </div>
                  <div class="col-md-5 col-lg-5">
                    <input type="date" class="form-control" name="to" ng-model="date_to">
                  </div>
                  <div class="col-md-2 col-lg-2">
                     <button type="submit" class="btn btn-primary"><i class="fa fa-search fa-fw"></i></button>
                  </div>                  
                </div>
                </form>

                  <table class="table" style="margin-top:13px;">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Product Description</th>
                        <th>Amount</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr ng-repeat="list in member_product_purchase">
                        <td>{{list.full_name}}</td>
                        <td>{{list.product_desc}}</td>
                        <td>{{list.amount}}</td>
                     </tbody>
                  </table>

              </div>
            </div>

          </div>
          
          <div class="col-lg-6 col-md-6 col-sm-6">
            
          </div>
        </div>
      </div>

    <div class="modal fade" id="cash-request-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog" style="width: auto;">

         <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal" >&times;</span>
            <h1 align="center">Request List</h1>
          </div>

          <div class="modal-body">
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
          <br>
        </div>
      </div>
      </div>
    </div>



    <div class="modal fade" id="code-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal" >&times;</span>
            <h1 align="center">Generate Code</h1>
          </div>
          <div class="modal-body">
            <form name="productPurchaseForm" ng-submit="onclickGenerateCode()">
              <input type="text" name="pass" class="form-control" ng-model="code_number" placeholder="How many codes?" required>
              <br>
              <button class="btn btn-primary" type="submit">Generate</button>
            </form>
          </div>
          <br>
        </div>
      </div>
    </div>

<!-- 
    <div class="modal fade" id="code-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
        <div class="loginmodal-container">
             <input type="text" name="pass" ng-model="code_number" placeholder="How many codes?">
         
          <input type="submit" name="login" class="login loginmodal-submit" ng-click="onclickGenerateCode()" value="Generate">
          </form>
        </div>
      </div>
    </div> -->

    <div class="modal fade" id="search-members-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal" >&times;</span>
            <h1 align="center">Search Member</h1>
          </div>

          <div class="modal-body">
            <table ng-table="tableMembers" class="table" show-filter="true">
              <tr ng-repeat="list in $data">
                  <td title="'Name'" filter="{ full_name: 'text'}" sortable="'full_name'">
                      {{list.full_name}}</td>
                  <td title="'Date Joined'"  sortable="'entered_on'">
                     {{list.entered_on | date:'medium'}}</td>
                  <td><button type="button" class="btn btn-primary" ng-click="onClickMember(list.user_id)"><i class="fa fa-pencil"></i></button></td>
                  <td><button type="button" class="btn btn-success" ng-click="onClickPrductPurchase(list.user_id,list.full_name)"><i class="fa fa-cart-plus"></i></button></td>
              </tr>
          </table>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="members-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal">&times;</span>
            <h1 align="center">Update Employee</h1>
          </div>
          <div class="modal-body">
          <div class="alert alert-success" role="alert" ng-show="saveMessage">Save successfully</div>
          <div class="alert alert-danger" role="alert" ng-show="updateMemberError">Fill Required Fields</div>
          <form name="add-employee" ng-submit="onUpdateMember('<?php echo base_url();?>')">
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
                      <input class="form-control" required type="text"  ng-model="password" placeholder="Password" >
                      </div>
                       <div class="form-group">
                        <label for="usr">Sponsor:</label>
                      <input class="form-control" readonly type="text" readonlys name="user" ng-model="sponsor" placeholder="Username" >
                    </div>
                    <div class="form-group">
                        <label for="usr">Sponsor Position:</label>
                      <input class="form-control" readonly type="text" name="user" ng-model="sponsor_position" placeholder="Username" >
                    </div>    
                    <div class="form-group">
                        <label for="usr">Upline:</label>
                      <input class="form-control" required readonly type="text" name="user" ng-model="upline" placeholder="Username" >
                    </div>  
                    <div class="form-group">
                        <label for="usr">Upline Position:</label>
                      <input class="form-control" readonly type="text" name="user" ng-model="upline_position" placeholder="Username" >
                    </div>  
                  
                
                </div>
              </div>
              <br>
              <button type="submit" class="btn btn-primary center-block">Save</button>
            </form>   
          </div>
          <br>
        </div>
      </div>
    </div>

    <div class="modal fade" id="product-purchase-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <span class="close" data-dismiss="modal" >&times;</span>
            <h1 align="center">Product Purchase</h1>
          </div>

          <div class="modal-body">

            <form name="productPurchaseForm" ng-submit="onClickSavePrductPurchase(user_purchase_id)">
            <div class="alert alert-success" role="alert" ng-show="purchaseSaveMessage">Save successfully</div>
            <label>Name : {{user_purchase}}</label>
            <br>
            <label>Product Amount: </label>
            <input type="text" class="form-control" name="product_amount" ng-model="product_amount" required>
             <br>
             <label>Product Description: </label>
            <input type="text" class="form-control" name="product_description" ng-model="product_description" required>
             <br>
             <label>Date Brought : </label> 
            <input type="date" class="form-control" name="date_brought" ng-model="date_brought" required>
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


  

   
   
    </div>
       
    

    