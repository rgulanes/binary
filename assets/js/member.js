angular.module('binaryApp')
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

		$scope._username = '';
		$scope._password = '';

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

		$scope.onShowModal = function($id,$firstname,$lastname){
			$scope.unposition_user = $firstname +' '+ $lastname;
			$scope.select_id = $id;
			$('#position-modal').modal('show'); 
		}

		
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
		        	//$scope.list_left_member = response.data.left_member;
		        	$scope.left_member_count = response.data.left_member[0].countLeft;
		        	// angular.forEach($scope.list_left_member,function(file){
		        	// 	file.entered_on = new Date(file.entered_on);
		        	// })

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
		};

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
			console.log(data);
			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'get_members_not_assigned',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		   			console.log(response.data.not_assigned);
		      		
		   			if(response.data.not_assigned.length > 0 ){
		   				$scope.notAssigned = true;
		   				$scope.not_assigned = response.data.not_assigned;
		      
		   			}else{
		   				$scope.notAssigned = false;
		   			}
		      	});

		}

		$scope.onChangePosition = function($selected_position){
			$scope.list_available_downline = [];

			$scope.selected_position = $selected_position;
			var data = angular.toJson({
				id : $scope.current_user,
				position : $selected_position

			});
			console.log(data);
			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'get_last_available_downline',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	console.log(response.data);
		   			if(response.data.available_downline.length > 0){
		   				//check if the both position is not  full
		   				$scope.available_downline = true;
		   				angular.forEach(response.data.available_downline,function(file){
		   					if(file.p_left == '1' && file.p_right == '1'){
		  					}else{
		   			  			$scope.list_available_downline.push(file); 
		   					}
		   				});
		   				//required the selected downline 


		   			}else{
		   				//doesnt yet donwlines.
		   				$scope.list_available_downline = [];
		   				$scope.available_downline = false;
		   				$scope.available_position = false;
		   			}
		      	});

		}

		//Modal Events
	    $('#position-modal').on('hidden.bs.modal', function () {
			$scope.available_downline = false;
		   	$scope.available_position = false;
		   	$(this).find('form input[name="optradio"]').prop('checked', false);
	    });

		$scope.onCheckAvailablePosition = function(selected_upline){
			console.log(selected_upline);
			var data = angular.toJson({
				id: selected_upline.u_user_id
			});
			console.log(data);
			$scope.file =  $http({
		        method  : 'POST',
		        url     : 'check_available_position',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	console.log(response.data.positions[0]);
		   			if(response.data.positions.length > 0 ){
		   				$scope.available_position = true;

		   				if((response.data.positions[0].position_right == '' && response.data.positions[0].position_left == '') || (response.data.positions[0].position_right == '0' && response.data.positions[0].position_left == '0')){
		   					$scope.available_list_position = [
		   						{ position_name : 'Left' },
		   						{ position_name : 'Right' }
		   					]
		   				}else if((response.data.positions[0].position_right == '' && response.data.positions[0].position_left > '1') || (response.data.positions[0].position_right == '0' && response.data.positions[0].position_left > '1')){
		   					$scope.available_list_position = [
		   						{ position_name : 'Right' }
		   					]
		   				}else if((response.data.positions[0].position_right > '1' && response.data.positions[0].position_left == '') || response.data.positions[0].position_right > '1' && response.data.positions[0].position_left == '0'){
		   					$scope.available_list_position = [
		   						{ position_name : 'Left' }
		   					]
		   			
		   				}

		   			}
		      	
		      	});
		}
		$scope.onclickSavePosition = function(){
			$scope.position_error = false;
			$scope.select_donwline = false;
			$scope.select_donwline_position = false;
			if($scope.selected_position == undefined){
				$scope.position_error = true;
			}else{

				if ($scope.list_available_downline.length >  0 ){
					console.log('---->',$scope.selected_upline);
					console.log('---->',$scope.selected_available_position);
					if($scope.selected_upline  ==  undefined){
						$scope.select_donwline = true;
					}else if($scope.selected_available_position == undefined){
						$scope.select_donwline_position = true;
					}else if ($scope.selected_upline != undefined && $scope.selected_available_position != undefined){
						var data = angular.toJson({
							id : $scope.current_user,
							downline : $scope.select_id,
							position : $scope.selected_position,
							upline : $scope.selected_upline == null ? '' : $scope.selected_upline.u_user_id,
							available_position : $scope.selected_available_position == null ? '' : $scope.selected_available_position.position_name
						});
						//console.log(data);
						$scope.file =  $http({
					        method  : 'POST',
					        url     : 'update_donwline_position',
					        data    :  data, //forms user object
					        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
					        })
					        .then(function(response) 
					        {
					   		
					   			if(response.data.error == 0 ){
					   				$scope.position_save = true;
					   				setTimeout(function(){ 	
								      	$('#position-modal').modal('hide'); 
								      	$scope.position_save = false;
									}, 1500);
									$scope.memberNotAssigned($scope.current_user);
									$scope.get_coh();
									$('#rightDataTable').DataTable().ajax.reload();
						   			$('#leftDataTable').DataTable().ajax.reload();
						   			
						   			$http({
								        method  : 'POST',
								        url     : 'generate_Commission',
								        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
							        });
						   		}else{
					   			}
					   			
					      	});
				    }
				}else{
					var data = angular.toJson({
							id : $scope.current_user,
							downline : $scope.select_id,
							position : $scope.selected_position,
							upline : $scope.selected_upline == null ? '' : $scope.selected_upline.u_user_id,
							available_position : $scope.selected_available_position == null ? '' : $scope.selected_available_position.position_name
						});
						console.log(data);
						$scope.file =  $http({
					        method  : 'POST',
					        url     : 'update_donwline_position',
					        data    :  data, //forms user object
					        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
					        })
					        .then(function(response) 
					        {
					   		
					   			if(response.data.error == 0 ){
					   				$scope.position_save = true;
					   				setTimeout(function(){ 	
								      	$('#position-modal').modal('hide'); 
								      	$scope.position_save = false;
									}, 1500);
									$scope.memberNotAssigned($scope.current_user);
									$scope.get_coh();
									$('#rightDataTable').DataTable().ajax.reload();
						   			$('#leftDataTable').DataTable().ajax.reload();
						   			
						   			$http({
								        method  : 'POST',
								        url     : 'generate_Commission',
								        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
							        });
						   		}else{
					   			}
					   			
					      	});

				}

			}
		}


		
	}); 


$(document).ready(function(){


    $('#view-tree').on('click', function(){
    	$('#tree-modal').modal('show');
    	$('#generate-tree').html('');
    	$('#generate-tree').load('./tree_view');
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
		    { "data": "date_create" }
		],
		"order": [[1, 'asc']]
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
});