angular.module('binaryApp')
	.controller('adminCtrl', function ($scope, $http, $location, $window,NgTableParams){

		$scope.firstname = '';
		$scope.lastname = '';
		$scope.gender = '';
		$scope.contact = '';
		$scope.address = '';
		$scope.username = '';
		$scope.password = '';

		$scope.saveMessage = false;
		$scope.updateMemberError = false;
		$scope.purchaseSaveMessage = false;

		$scope._username = '';
		$scope._password = '';
		
		$scope.code_number = '';

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

		$scope.getAllMembers = function($base_url){
			var data = angular.toJson({
			});
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../member/get_all_members',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	angular.forEach(response.data.user_info,function(file){
		        		file.entered_on = new Date(file.entered_on);
		        		file.full_name = file.first_name +' '+file.last_name;
		        	
		        	})
		        	$scope.tableMembers = new NgTableParams({count : 5 }, { dataset: response.data.user_info});
		      	});
		}
		$scope.getAllMembers();

	

		$scope.onclickGenerateCode = function(){
			if($scope.code_number != ''){
				var data = angular.toJson({
					number : $scope.code_number
				});

				$scope.file =  $http({
			        method  : 'POST',
			        url     : '../admin/generateCode',
			        data    :  data, //forms user object
			        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
			        })
			        .then(function(response) 
			        {
			        	$scope.code_generated = response.data;
			        	$('#code-modal').modal('hide');
			        	$scope.code_number = '';
			        	$scope.get_all_generated_codes();
			      	});
		    }
		}

		$scope.get_all_generated_codes = function(){
			var data = angular.toJson({
			});
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../admin/get_generated_code',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	$scope.list_code_generated = response.data.generated_codes;
		      	});
		}
		$scope.get_all_generated_codes();
		
		$scope.cashRequest = function(){
			
			$scope.file = $http({
				method 	: 'POST',
				url 	: '../admin/get_cash_request',
				headers : {'Content-Type' : 'application/x-www-form-urlencoded'} 
			}).then(function(response){
				angular.forEach(response.data.cash_request,function(file){
					file.date_requested = new Date(file.date_requested);
				})
				$scope.cash_request_list = response.data.cash_request;
				$scope.cash_request_count = $scope.cash_request_list.length;
			});	
			
		}
		$scope.cashRequest();

		$scope.onClickCashRequest = function(){
			 $('#cash-request-modal').modal('show');
		}
	
		$scope.onClickUpdateRequest = function($id){
			var data  = angular.toJson({
				id : $id
			});	
			$scope.file = $http({
				method  : 'POST',
				url 	: '../admin/update_request_status',
				data    : data,
				headers : {'Content-Type' : 'application/x-www-form-urlencoded'}
			}).then(function(response){
				$scope.cashRequest();
			})
		}


		
		$scope.onClickCloseCashRequest = function(){
			$('#cash-request-modal').modal('hide');
		}

		$scope.onClickMember = function($id){
			$('#members-modal').modal('show');
			$scope.saveMessage = false;
			$scope.updateMemberError = false;

			var data = angular.toJson({
				id : $id
			});
	
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../admin/get_members_data',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		        	console.log(response.data);
		        	angular.forEach(response.data.member_details,function(data){
		        		$scope.firstname = data.first_name;
		        		$scope.lastname = data.last_name;
		        		$scope.gender = data.gender;
		        		$scope.contact = data.contact;
		        		$scope.email = data.email;
		        		$scope.address = data.address;
		        		$scope.username = data.user_name;
		        		$scope.password = data.password;
		        		$scope.user_id = data.user_id;
		        		
		        		$scope.sponsor = data.sponsor;
		        		$scope.sponsor_position = data.sponsor_position;
		        		$scope.upline = data.upline;
		        		$scope.upline_position = data.position;



		        	})
		        	
		      	});
		}


		$scope.onUpdateMember = function($base_url){
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
				$scope.updateMemberError = true;
			}else{

				var data = angular.toJson({
					user_id 	: $scope.user_id,
					firstname 	: $scope.firstname ,
		 			lastname 	: $scope.lastname ,
		 			gender 		: $scope.gender ,
		 			contact 	: $scope.contact ,
		 			email 		: $scope.email ,
		 			address 	: $scope.address ,
		 			sponsor 	: $scope.sponsor,
					username 	: $scope.username,
					password 	: $scope.password,
					generated_code 	: '',

				});	
				$scope.file =  $http({
		          method  : 'POST',
		          url     : $base_url+'login/save_member',
		          data    :  data, //forms user object
		          headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		         }).then(function(response){
		       
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
		         	$scope.getAllMembers($base_url);
		         	setTimeout(function(){ 	
				      	$('#members-modal').modal('hide'); 
				      	$scope.saveMessage = true;
				   	}, 1500);
		        });
		    }     
		}

		$scope.onClickMembers = function(){
			$("#search-members-modal").modal('show');
		}
		
		$scope.onClickPrductPurchase = function($id,$full_name){
			$scope.user_purchase = $full_name;
			$scope.user_purchase_id = $id;
 			$scope.product_amount = '';
 			$scope.date_brought = '';
			$scope.purchaseSaveMessage = false;
			$('#product-purchase-modal').modal('show');

		}

		$scope.onClickSavePrductPurchase = function($id){

			var data  = angular.toJson({
				amount : $scope.product_amount,
				date_purchase : $scope.date_brought,
				user_id : $id
			});

			$scope.file  = $http({
				method  : 'POST',
		        url     : '../admin/save_product_purchase',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
			}).then(function(response){
				if(response.data.error == 0 ){
					$scope.purchaseSaveMessage = true;
					setTimeout(function(){ 	
				      	$('#product-purchase-modal').modal('hide'); 
				  	}, 1500);
				}

			});
		}

		$scope.onSearchProduct = function(){

			var data = angular.toJson({
				from : $scope.date_from,
				to : $scope.date_to
			});

			$scope.file = $http({
				method  : 'POST',
		        url     : '../admin/get_member_product_purchase',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
			}).then(function(response){
				$scope.member_product_purchase = response.data.member_product_purchase;
			});

		}	


		$scope.getProfileInfo = function(){
			$scope.file =  $http({
		        method  : 'POST',
		        url     : '../admin/get_profile_info',
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        }).then(function(response) 
		        {
		        	// console.log('--->',response);
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
		      		// console.log(response.data);
		      		if(response.data.error == 0){
		      			$scope.saveMessage = true;
		      			setTimeout(function(){ 	
							$("#change-password-modal").modal('hide');
						}, 1500);
		      		}else{

		      		}
		      	});

		

		}


		$scope.onClickChangePassword =  function(){
			$scope.saveMessage = false;
			$scope.getProfileInfo();
			$("#change-password-modal").modal('show');
		
		}

}); 
