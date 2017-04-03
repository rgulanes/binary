angular.module('binaryApp')
.config(['$qProvider', function ($qProvider) {
    $qProvider.errorOnUnhandledRejections(false);
}])
	.controller('memberCtrl', function ($scope, $http, $location, $window){

		$scope.firstname = '';
		$scope.lastname = '';
		$scope.gender = '';
		$scope.contact = '';
		$scope.address = '';
		$scope.username = '';
		$scope.password = '';

		$scope.select_donwline_position = false;
		$scope.select_donwline = false;
		$scope.saveMessage = false;
		$scope.position_error = false;
		$scope.position_save = false;
		$scope.available_position = false;
		$scope.available_downline = false; 
		$scope.cash_request_message = false;

		$scope.show_cash_request_success = false;;
		$scope.show_cash_request_error = false;

		$scope._username = '';
		$scope._password = '';

		$scope.requested_amount = '';

		$scope.notAssigned = false;

		$scope.list_position =  [{position: 'Right'},{position: 'Left'}];


		$scope.onLoadUserInfo = function($userInfo){
			$scope.current_user = $userInfo;
			$scope.sponsoredMember($userInfo);
			$scope.memberNotAssigned($userInfo);
			$scope.get_left_member();
			$scope.get_right_member();
			$scope.get_coh();
		}

		// $scope.onShowModal = function($id,$firstname,$lastname){
		// 	$scope.unposition_user = $firstname +' '+ $lastname;
		// 	$scope.select_id = $id;
		// 	$('#position-modal').modal('show'); 
		// f
		
		$scope.onclickLogout = function (){
		
			var data = angular.toJson({
				id: ''
			});
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../login/logout',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	$window.location = '../login/index';
		      	});
		}

		$scope.onclickCashout = function(){
			$scope.show_cash_request_success = false;
			$scope.show_cash_request_error = false;
			$scope.requested_amount = '';
			$('#cash-out-modal').modal('show');
		}

		$scope.onClickCloseRequestedAmount = function(){
			$('#cash-out-modal').modal('hide');
			$scope.requested_amount = '';
		}

		$scope.onClickRequestedAmount = function(){
			if($scope.requested_amount < 200){
				
				$scope.show_cash_request_success = false;
				$scope.show_cash_request_error = true;
				$scope.cash_request_message = 'Cannot withraw less than 200.';
		
			}else if($scope.requested_amount != '' && $scope.requested_amount >= 200){
				
				var data = angular.toJson({
					amount : $scope.requested_amount
				});
				$scope.file = $http({
					method 	: 'POST',
					url 	: 'send_request',
					data 	:  data,
					headers : {'Content-Type' : 'application/x-www-form-urlencoded'}
				}).then(function(response){
					if(response.data.error == 0){
					
						$scope.show_cash_request_success = true;
						$scope.show_cash_request_error = false;
						$scope.cash_request_message = response.data.message;

						setTimeout(function(){ 	
							$('#cash-out-modal').modal('hide');
							$scope.requested_amount = '';
						}, 1500);

					}else{

						$scope.show_cash_request_success = false;
						$scope.show_cash_request_error = true;
						$scope.cash_request_message = response.data.message;
					}

					});
			}else if($scope.requested_amount == '' ){
				
				$scope.show_cash_request_success = false;
				$scope.show_cash_request_error = true;
				$scope.cash_request_message = 'Please enter amount';

			} 
		}

		$scope.sponsoredMember = function($id){
			
			var data = angular.toJson({
				id: $id
			});


			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'get_all_sponsored_member',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	$scope.sponsored_member = response.data.sponsored_members;
		      	});
		}

		$scope.get_left_member = function(){
			
			var data = angular.toJson({
				id:''
			});

			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'get_all_left',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	$scope.left_member_count = response.data.left_member[0].countLeft;
		       	});
		}

		$scope.get_coh = function(){
			$scope.file =  $http({
		        url     : 'get_total_coh',
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	$.each(response.data.cash_on_hand, function(k,v){
		        		$scope.user_coh = v.totalCashOnHand;
		        	});
		      	});
		}

		$scope.get_right_member = function(){
			
			var data = angular.toJson({
				id: ''
			});

			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'get_all_right',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {	
		        	//$scope.list_right_member = response.data.right_member;
		        	$scope.right_member_count = response.data.right_member[0].countRight;
		      	});
		}

		$scope.memberNotAssigned = function($id){

			var data = angular.toJson({
				id: $id
			});
			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'get_members_not_assigned',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		   	  		
		   			if(response.data.not_assigned.length > 0 ){
		   				$scope.notAssigned = true;
		   				$scope.not_assigned = response.data.not_assigned;
		      
		   			}else{
		   				$scope.notAssigned = false;
		   			}
		      	});

		}

		
		$scope.onClickUpdateProfile =  function(){
			$scope.saveMessage = false;
			$scope.getProfileInfo();
			$("#update-profile-modal").modal('show');
		}

		$scope.onClickChangePassword =  function(){
			$scope.saveMessage = false;
			$scope.getProfileInfo();
			$("#change-password-modal").modal('show');
		
		}

		$scope.getProfileInfo = function(){
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../admin/get_profile_info',
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        }).then(function(response) 
		        {
		      		angular.forEach(response.data,function(data){
		   	  			$scope.update_user_id = data.user_id;
		   	  			$scope.update_first_name = data.first_name;
		   	  			$scope.update_last_name = data.last_name;
		   	  			$scope.update_contact = data.contact;
		   	  			$scope.update_address = data.address;
		   	  			$scope.update_email = data.email;
		   	  			$scope.update_gender = data.gender;
		   	  			$scope.current_password = data.password;
		   	  		})
		      	});
		}

		$scope.onChangePassword = function(){

			
			var data = angular.toJson({
				user_id : $scope.update_user_id,
				new_password : $scope.new_password,
			});	
			
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../admin/update_password',
		        data 	: data,
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		      		console.log(response.data);
		      		if(response.data.error == 0){
		      			$scope.saveMessage = true;
		      			setTimeout(function(){ 	
							$("#change-password-modal").modal('hide');
						}, 1500);
		      		}else{

		      		}
		      	});

		

		}

		$scope.onUpdateProfile = function(){

			var data = angular.toJson({
				user_id : $scope.update_user_id,
				first_name : $scope.update_first_name,
				last_name : $scope.update_last_name,
				contact : $scope.update_contact,
				address : $scope.update_address,
				email : $scope.update_email,
				gender : $scope.update_gender,
			});	
		
				$scope.file =  $http({
		        method  : 'POST',
		        url     : '../admin/update_profile_info',
		        data 	: data,
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		      		console.log(response.data);
		      		if(response.data.error == 0){
		      			$scope.saveMessage = true;
		      			setTimeout(function(){ 	
							location.reload();
						}, 1500);
		      		}else{

		      		}
		      	});
		}

		
}); 


$(document).ready(function(){
	$.ajax({
        url     : './generateHierarchy'
    });

    $('#view-tree').on('click', function(){
    	window.open("./tree_view", "_blank");
    });

	/* Formatting function for row details - modify as you need */
	function format ( d ) {
	    // `d` is the original data object for the row
	    var leftMember = '';
	    var rightMember = '';

	    if(d.members.length != 0){
	    	$.each(d.members, function(i, v){
		    	if(v.isPosition == 'L'){
		    		leftMember = v.full_name
		    	}

		    	if(v.isPosition == 'R'){
		    		rightMember = v.full_name
		    	}
		    });


		    return '<table class="table table-condensed table-bordered" width="100%">'+
		    	'<thead>'+
		    		'<tr>'+
			            '<th>Left</th>'+
			            '<th>Right</th>'+
		            '</tr>'+
		        '</thead>'+
		        '<tr>'+
		            '<td>'+leftMember+'</td>'+
		            '<td>'+rightMember+'</td>'+
		        '</tr>'+
		    '</table>';
	    }else{
	    	return 'No members assigned yet.';
	    }
	    
	}

	var table = $('#rightDataTable').DataTable( {
		"ajax": "getAllRightMembers",
		"columns": [
		    {
		        "className":      'details-control',
		        "orderable":      false,
		        "data":           null,
		        "defaultContent": ''
		    },
		    { "data": "full_name" },
		    { "data": "date_joined" }
		],
		"order": [[1, 'asc']]
	} );

    // Add event listener for opening and closing details
    $('#rightDataTable tbody').on('click', 'td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = table.row( tr );
 
        if ( row.child.isShown() ) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        }
        else {
            // Open this row
            row.child( format(row.data()) ).show();
            tr.addClass('shown');
        }
    } );


	var table2 = $('#leftDataTable').DataTable( {
		"ajax": "getAllLeftMembers",
		"columns": [
		    {
		        "className":      'details-control',
		        "orderable":      false,
		        "data":           null,
		        "defaultContent": ''
		    },
		    { "data": "full_name" },
		    { "data": "date_joined" }
		],
		"order": [[1, 'asc']]
	} );

    // Add event listener for opening and closing details
    $('#leftDataTable tbody').on('click', 'td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = table2.row( tr );
 
        if ( row.child.isShown() ) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        }
        else {
            // Open this row
            row.child( format(row.data()) ).show();
            tr.addClass('shown');
        }
    } );


    $('#userWithdrawalsDataTable').DataTable( {
		"ajax": "getUserWithdrawals",
		"columns": [
		    { "data": "w_amount" },
		    { "data": "status" },
		    { "data": "date_create" }
		],
		"order": [[2, 'asc']]
	} );

    $('#userCohDataTable').DataTable( {
		"ajax": "getUserCommissions",
		"columns": [
		    { "data": "c_amount" },
		    { "data": "date_create" },
		    { "data": "remarks" }
		],
		"order": [[1, 'asc']]
	} );

	$('#userRebatesDataTable').DataTable( {
		"ajax": "getUserRebates",
		"columns": [
		    { "data": "c_amount" },
		    { "data": "date_create" },
		    { "data": "remarks" }
		],
		"order": [[1, 'asc']]
	} );

    $.get('board_stats', function(data){
    	var json = JSON.parse(data);

    	$('#treeSize-panel').html(json.treeSize);
		$('#commission-panel').html(json.upline);
		$('#withdrawal-panel').html(json.withdrawal);
		$('#referrals-panel').html(json.referral);
		$('#rebates-panel').html(json.rebate);
		$('#productPurchase-panel').html(json.productPurchase);
		$('#treeSize-left-board').html(json.left);
		$('#treeSize-right-board').html(json.right);
    });
	
});