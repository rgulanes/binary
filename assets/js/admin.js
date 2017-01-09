angular.module('binaryApp')
	.controller('adminCtrl', function ($scope, $http, $location, $window){

		$scope.firstname = '';
		$scope.lastname = '';
		$scope.gender = '';
		$scope.contact = '';
		$scope.address = '';
		$scope.username = '';
		$scope.password = '';

		$scope.saveMessage = false;

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
		        	console.log(response.data);
		        	angular.forEach(response.data.user_info,function(file){
		        		file.entered_on = new Date(file.entered_on);
		        	})
		        	$scope.member_list = response.data.user_info;
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
			        	console.log(response.data);
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
		        	console.log(response.data.generated_codes);
		        	$scope.list_code_generated = response.data.generated_codes;
		      	});
		}
		$scope.get_all_generated_codes();
		
		

		
	}); 

