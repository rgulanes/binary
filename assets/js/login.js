angular.module('binaryApp',['ui.select','ngTable'])
	.controller('loginCtrl', function ($scope, $http, $location, $window){

		$scope.firstname = '';
		$scope.lastname = '';
		$scope.gender = '';
		$scope.contact = '';
		$scope.email = '';
		$scope.address = '';
		$scope.sponsor = '';
		$scope.username = '';
		$scope.password = '';


		$scope.saveMessage = false;
		$scope.errorMessage = false;
		$scope.newMemberError = false;

		$scope._username = '';
		$scope._password = '';

		$scope.member_list = [];

		$scope.enterCode = true;
		$scope.errorCode = false;

		$scope.onLoadUrl = function($base_url){
			$scope.getAllMembers($base_url);
		}
		
		$scope.onclickLogin = function ($base_url){
		
		
			if($scope._username == '' || $scope._password == ''){
				$scope.errorMessage = true;
			}else{
				var data = angular.toJson({
					username: $scope._username,
					password: $scope._password
				});

				$scope.file =  $http({
		        method  : 'POST',
		        url     : $base_url+'login/user_authentication',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        
		        	if(response.data.error == 1){
		        		$scope.errorMessage = true;
		        	}else{

			        	$scope.errorMessage = false;
			        	if(response.data.position == 1){
			        		//admin page
			        		$window.location = $base_url+'admin/index';
			        	}else{
			        		//member pages
			        		$window.location = $base_url+'member/index';
			        	}
		        	}
		        	

		        	
		      	});
			}
		}

		$scope.onSaveMember = function($base_url){
			var error = 0;
			if($scope.firstname == '' ){
				error+=1;
			}else if($scope.lastname == ''){
				error+=1;
				
			}else if($scope.gender == ''){
				error+=1;
		
			}else if($scope.contact == ''){
				error+=1;
		 
			}else if($scope.address == ''){
				error+=1;
		
			}else if($scope.sponsor == null){
				error+=1;
		
			}else if($scope.username == ''){
				error+=1;
		
			}else if($scope.password == ''){
				error+=1;
		
			}
			if(error > 0){
				$scope.newMemberError = true;
			}else{

				var data = angular.toJson({
					user_id 	: '',
					firstname 	: $scope.firstname ,
		 			lastname 	: $scope.lastname ,
		 			gender 		: $scope.gender ,
		 			contact 	: $scope.contact ,
		 			email 		: $scope.email ,
		 			address 	: $scope.address ,
		 			sponsor 	: $scope.sponsor,
					username 	: $scope.username,
					password 	: $scope.password,
					generated_code 		: $scope.code,
				});	
				console.log(data);
				
				$scope.file =  $http({
		          method  : 'POST',
		          url     : $base_url+'login/save_member',
		          data    :  data, //forms user object
		          headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		         }).then(function(response){
		         	console.log(response.data);

		         	if(response.status == 200){
		         	 	$scope.saveMessage = true;
		         		$scope.firstname = '';
						$scope.lastname = '';
						$scope.gender = '';
						$scope.contact = '';
						$scope.address = '';
						$scope.username = '';
						$scope.password = '';
						$scope.email = '';
						$scope.sponsor = '';
		         	}
		         	setTimeout(function(){ 	
				      	$('#add-modal').modal('hide'); 
				      	$scope.saveMessage = true;
				   	}, 1500);
		        });
		    }     
		}


		$scope.getAllMembers = function($base_url){
			var data = angular.toJson({
			});
			$scope.file =  $http({
		        method  : 'POST',
		        url     : $base_url+'member/get_all_members',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	angular.forEach(response.data.user_info,function(file){
		        		$scope.member_list.push(file);
		        	})
		        		
		      	});
		}

		$scope.onCheckCode = function($base_url){
			var data = angular.toJson({
				code : $scope.code
			})
			console.log($base_url);
			$scope.file	= $http({
				method  : 'POST',
		        url     : $base_url+'login/check_code',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function(response){
				console.log(response.data);
				if(response.data.error == 0){
					$scope.enterCode = false;

				}else{
					$scope.errorCode = true;
					setTimeout(function(){ 	
				      	$scope.errorCode = false;
				   	}, 1500);
					
				}
			});
		}

		//Modal Events
	    $('#add-modal').on('hidden.bs.modal', function () {
			location.reload();
	    });
		
	}); 

