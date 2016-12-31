<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script src="resources/My_Design/angular.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="Header.jsp"%>
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
<script>
	var dest = $
	{
		mylist
	};
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
				<sf:form role="form" action="Insertsupp" commandName="supplier"
					method="post">
					<h2>
						Please See the all Available Suppliers..<small>It's free
							and always will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="row">
							<div class="col-xs-12">



								<div class="form-group col-xs-12">
									<sf:input path="supplierName" class="form-control input-lg"
										placeholder="supplierName" tabindex="1" pattern=".{3,15}"
										required="true" title="minimum length for supplierNameis 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="supplierDesc" class="form-control input-lg"
										placeholder="supplier Description" tabindex="1" pattern=".{3,15}"
										required="true"
										title="minimum length for supplierDesc is 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="price" class="form-control input-lg"
										placeholder="Price" tabindex="1" pattern=".{3,15}"
										required="true" title="minimum length for Price is 3"></sf:input>
								</div>

								<div class="col-xs-12">
									<input type="submit" value="Get-Supplier"
										class="btn btn-primary btn-block btn-lg" tabindex="7">
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
				<sf:form role="form" action="plzNowUpdatedsupplier"
					commandName="supplier" method="post">
					<h2>
						Please Update all Available Suppliers..<small>It's free
							and always will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="row">
							<div class="col-xs-12">


								<div class="form-group col-xs-12">
									<sf:input path="supplierId" class="form-control input-lg"
										placeholder="supplierID" tabindex="1" pattern=".{1,15}"
										required="true" title="minimum length for supplierIDis 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="suppliername" class="form-control input-lg"
										placeholder="supplierName" tabindex="1" pattern=".{3,15}"
										required="true" title="minimum length for supplierNameis 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="supplierDesc" class="form-control input-lg"
										placeholder="supplierDesc" tabindex="1" pattern=".{3,15}"
										required="true"
										title="minimum length for supplierDesc is 3"></sf:input>
								</div>
								<div class="form-group col-xs-12">
									<sf:input path="price" class="form-control input-lg"
										placeholder="price" tabindex="1"
										required="true" title="minimum length for price is 2"></sf:input>
								</div>

								<div class="col-xs-12">
									<input type="submit" value="Update-Supplier"
										class="btn btn-primary btn-block btn-lg" tabindex="7">
								</div>
							</div>
						</div>
				</sf:form>
			</div>
		</div>
	</div>
</c:if>




<div ng-app="repeatSample" ng-controller="repeatController">
	<div class="row">
		<h2 align="center">Search Supplier</h2>

		<div class="input-group col-md-12">
			<input type="text" class="search-query form-control"
				placeholder="Search" ng-model="searchText" />

		</div>
	</div>

	<table class="table table-responsive">


		<thead>
			<tr>
				<th>supplier id</th>

				<th>supplier Name</th>
				<th>Description</th>
				<th>Price</th>

			</tr>
		</thead>

		</tr>

		<tr ng-repeat="destination in destinations|filter:searchText">


			<td><a href="destinationDescription?pid={{product.supplierid}}">{{product.supplierid}}</a></td>
			<td><a href="ProductDescription?pid={{product.suppliername}}">{{product.suppliername}}</a></td>
			<td><a href="ProductDescription?pid={{product.supplieraddress}}">{{product.supplieraddress}}</a></td>
			<td><a href="ProductDescription?pid={{product.suppliermobile}}">{{product.suppliermobile}}</a></td>
			<td><a href="Deletesuppli?pid={{product.supplierid}}">Delete</a></td>
			<td><a href="plzUpdatedsupplier?pid={{product.supplierid}}">Update</a></td>



		</tr>
	</table>
</div>
</div>
</div>






<%@ include file="Footer.jsp"%>
