<%@ include file="header.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Packages</title>
<script>
	var dest = ${mylist};
	angular.module('repeatSample', []).controller('repeatController',
			function($scope) {
				$scope.destinations = dest;

				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}

			});
</script>


<c:if test="${!checkk}">

	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<sf:form role="form" action="Insertpackage" commandName="package">
					<h2>
						Add new Packages...<small>It's free and always will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group col-xs-12">
									<sf:input path="packageName" class="form-control input-lg"
										placeholder="Package Name" tabindex="1" pattern=".{3,15}"
										required="true" title="minimum length for PackageName is 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="packageDescription"
										class="form-control input-lg"
										placeholder="Package Description" tabindex="1" required="true"
										title="minimum length for package Description is 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input type="file" path="pimage"
										class="form-control input-lg" placeholder="file" tabindex="1"
										title="minimum length for image is 1" />
								</div>
								<div class="form-group col-xs-12">
									<input type="submit" value="Add-Package"
										class="btn btn-primary btn-block btn-lg" tabindex="7">
								</div>

							</div>
						</div>
					</div>
				</sf:form>
			</div>
		</div>
	</div>
</c:if>

<c:if test="${checkk}">

	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">

				<sf:form role="form" action="plzNowUpdatedpackage"
					commandName="package">
					<h2>
						Please Update the packages...<small>It's free and always
							will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="row">
							<div class="col-xs-12">


								<div class="form-group col-xs-12">

									<sf:input path="packageId" class="form-control input-lg"
										placeholder="Package Id" tabindex="1" pattern=".{1,15}"
										required="true" title="minimum length for package ID is 1"></sf:input>
								</div>

								<div class="form-group col-xs-12">
									<sf:input path="packageName" class="form-control input-lg"
										placeholder="Package Name" tabindex="1" pattern=".{3,15}"
										required="true" title="minimum length for package Name is 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="packageDescription"
										class="form-control input-lg"
										placeholder="Package Description" tabindex="1" required="true"
										title="minimum length for package Description is 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input type="file" path="pimage"
										class="form-control input-lg" placeholder="file" tabindex="1"
										title="minimum length for image is 1" />
								</div>
								<div class="col-xs-12">
									<input type="submit" value="Update-package"
										class="btn btn-primary btn-block btn-lg" tabindex="7">
								</div>
							</div>

						</div>
					</div>
				</sf:form>

			</div>
		</div>
	</div>

</c:if>


<div ng-app="repeatSample" ng-controller="repeatController">
	

	<table class="table table-responsive">


		<thead>
			<tr>
				<th>Package Id</th>
				<th>Package Name</th>
				<th>Package Description</th>
				<th>Image</th>
			</tr>
		</thead>
		<tr ng-repeat="destination in destinations|filter:searchText">

			<td><a
				href="DestDescription?did={{destination.destId}}">{{destination.packageId}}</a></td>
			<td><a
				href="DestDescription?did={{destination.supplierId}}">{{destination.packageName}}</a></td>
			<td><a
				href="DestDscription?did={{destination.packages}}">{{destination.packageDescription}}</a></td>
				<td><a
				href="#"><img src="resources/images/{{destination.packageId}}.jpg" height="50px" 
                     width="50px"></a></td>
			
			<td><a href="Deletepackage?did={{destination.packageId}}">Delete</a></td>
			<td><a href="plzUpdatedpackage?did={{destination.packageId}}">Update</a></td>
		</tr>
	</table>
</div>

<%@ include file="footer.jsp"%>
