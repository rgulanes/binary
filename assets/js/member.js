angular.module('binaryApp')
	.controller('memberCtrl', function ($scope, $http, $location, $window){

		$scope.firstname = '';
		$scope.lastname = '';
		$scope.gender = '';
		$scope.contact = '';
		$scope.address = '';
		$scope.username = '';
		$scope.password = '';

		$scope.saveMessage = false;
		$scope.position_error = false;
		$scope.position_save = false;

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
		        	$scope.list_left_member = response.data.left_member;
		        	$scope.left_member_count = response.data.left_member.length;
		        	// angular.forEach($scope.list_left_member,function(file){
		        	// 	file.entered_on = new Date(file.entered_on);
		        	// })

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
		        	$scope.list_right_member = response.data.right_member;
		        	$scope.right_member_count = response.data.right_member.length;
		        	
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
		   			// console.log(response.data.not_assigned);
		      		
		   			if(response.data.not_assigned.length > 0 ){
		   				$scope.notAssigned = true;
		   				$scope.not_assigned = response.data.not_assigned;
		      
		   			}
		      	});

		}

		$scope.onChangePosition = function($selected_position){
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
		   				$scope.list_available_downline = response.data.available_downline;
		   			}else{
		   				//doesnt yet donwlines.
		   				$scope.list_available_downline = [];
		   			}
		      	});

		}

		$scope.onclickSavePosition = function(){

			if($scope.selected_position == undefined){
				$scope.position_error = true;
			}else{
					var data = angular.toJson({
						id : $scope.current_user,
						downline : $scope.select_id,
						position : $scope.selected_position,
						upline : $scope.selected_upline == null ? '' : $scope.selected_upline.u_user_id
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
					   		}else{

				   			}
				   			
				      	});

			}
		}


		
	}); 

