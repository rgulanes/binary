angular.module('binaryApp',['ui.select','ngTable','ui.select'])
.filter('propsFilter', function() {
  return function(items, props) {
    var out = [];

    if (angular.isArray(items)) {
      var keys = Object.keys(props);

      items.forEach(function(item) {
        var itemMatches = false;

        for (var i = 0; i < keys.length; i++) {
          var prop = keys[i];
          var text = props[prop].toLowerCase();
          if (item[prop].toString().toLowerCase().indexOf(text) !== -1) {
            itemMatches = true;
            break;
          }
        }

        if (itemMatches) {
          out.push(item);
        }
      });
    } else {
      // Let the output be the input untouched
      out = items;
    }

    return out;
  };
})

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
		$scope.sponsor = [];
		$scope.upline = [];

		$scope.save_buttton_status = false;

		$scope.available_downline = false;

		$scope.createdAccountError = false;

		$scope.sponsor_position = [
			{ position_name : 'Left' },
			{ position_name : 'Right' }
		]

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

		$scope.onSavePosition = function($base_url,$lastest_id){
			// var data = angular.toJson({
			// 	id 		 : $scope.sponsor.selected.user_id,
			// 	downline : $lastest_id,
			// 	position : $scope.sponsor_position,
			// 	upline   : $scope.upline.selected.u_user_id,
			// 	available_position : $scope.downline_position
			// });
			var data = new Object;
			if($scope.list_available_downline.length != 0){
				data = angular.toJson({
					id 		 : $scope.sponsor,
					downline : $lastest_id,
					position : $scope.sponsor_position,
					upline   : $scope.available_downline_id,
					available_position : $scope.downline_position
				});
			}else{
				data = angular.toJson({
					id 		 : $scope.sponsor,
					downline : $lastest_id,
					position : $scope.sponsor_position,
					upline   : '',
					available_position : ''
				});
			}

			console.log(data);
			
			$scope.file =  $http({
		        method  : 'POST',
		        url     : $base_url+'member/update_donwline_position',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {
		   			if(response.data.error == 0 ){
		   				$scope.position_save = true;
		   	// 			setTimeout(function(){ 	
					 //      	$('#position-modal').modal('hide');
					 //      	$scope.position_save = false;
						// }, 1500);

			   		}else{

		   			}
		   			
		      	});
		}

		$scope.onSaveMember = function($base_url){
			
			$scope._errorMessage = '';
			var error = 0;
			var sponsor_errorMessage = '';
			var sponsor_position_errorMessage = '';
			var downline_position_errorMessage = '';
			var available_downline_errorMessage = '';

			if($scope.sponsor.selected == undefined ){
				sponsor_errorMessage = '(Sponsor)';
				error+=1;
			}
			if($scope.sponsor_position_selected  == undefined ){
				sponsor_position_errorMessage = '(Sponsor Position)';
				error+=1;
			}
			
			if($scope.list_available_downline.length !=  0)
			{

				if($scope.upline.selected == undefined){
					available_downline_errorMessage = '(Available Downline)';
					error+=1;
				}
				if($scope.downline_position == undefined){
					downline_position_errorMessage = '(Downline Position)';
					error+=1;
				}
			}

			if(error > 0){
				$scope.newMemberError = true;
				$scope._errorMessage = sponsor_errorMessage+' '+sponsor_position_errorMessage+' '+available_downline_errorMessage+' '+downline_position_errorMessage; 
			}else{
				error = 0;
				$scope.save_buttton_status = true;
				$scope.newMemberError = false;
				$scope.sponsor = $scope.sponsor.selected.user_id;
				if($scope.upline.selected != undefined){
					$scope.upline = $scope.upline.selected.user_id;
				}
				

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
				
					$scope.file =  $http({
		          method  : 'POST',
		          url     : $base_url+'login/save_member',
		          data    :  data, //forms user object
		          headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		         }).then(function(response){
		         	if(response.data.error == 0 ){
			         	if(response.status == 200){
			         	 	//save the positioning
			         	 	if(response.data.user_id > 0 ){
			         	 		$scope.onSavePosition($base_url,response.data.user_id);
			         	 	}else{

			         	 	}
			         	 	$scope.createdAccountError = false;
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
					}else{
						$scope.createdAccountError = true;
						$scope.save_buttton_status = false;

					}
		        });
		    }     
		}

		


		$scope.onChangePosition = function($base_url,$selected_position){
			$scope.list_available_downline = [];
			$scope.sponsor_position_selected = $selected_position;
			$scope.selected_position = $selected_position;
			var data = angular.toJson({
				id 		 :	$scope.sponsor.selected.user_id,
				position : 	$selected_position

			});
			// console.log('onChangePosition', $base_url+'member/get_last_available_downline');
			$scope.file =  $http({
		        method  : 'POST',
		        url     : $base_url+'member/get_last_available_downline',
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
		  						file.full_name = '';
		  						file.full_name = file.u_first_name+' '+file.u_last_name;
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

		$scope.onCheckAvailablePosition = function($base_url,selected_upline){

			$scope.available_downline_id = selected_upline.u_user_id;
			var data = angular.toJson({
				id: selected_upline.u_user_id
			});
			// console.log('onCheckAvailablePosition',$base_url+'member/check_available_position')
			$scope.file =  $http({
		        method  : 'POST',
		        url     : $base_url+'member/check_available_position',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
		        })
		        .then(function(response) 
		        {	


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
		
		$scope.onChangeSponsor = function($base_url){
			$scope.available_downline = false;
			if($scope.sponsor_position_selected != undefined){
				$scope.onChangePosition($base_url,$scope.sponsor_position_selected);
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
		        		file.full_name = '';
		        		file.full_name = file.first_name +' '+ file.last_name;
		        		$scope.member_list.push(file);
		        	})
		        		
		      	});
		}

		$scope.onCheckCode = function($base_url){
			var data = angular.toJson({
				code : $scope.code
			})
			$scope.file	= $http({
				method  : 'POST',
		        url     : $base_url+'login/check_code',
		        data    :  data, //forms user object
		        headers : {'Content-Type': 'application/x-www-form-urlencoded'}
			}).then(function(response){
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

		// Modal Events
	    $('#add-modal').on('hidden.bs.modal', function () {
			location.reload();
	    });
		
	}); 

