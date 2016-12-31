<%@ include file="/WEB-INF/views/header.jsp"%>
<html>
<head>
<meta charset="utf-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Buyer's choice</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	position: relative;
	margin: 0 auto;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 800;
	opacity: 50%;
	color: white;
}


</style>
<body>


	<div id="myCarousel" class="carousel slider" data-ride="carousel"
		data-interval="3000">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>


		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img src="resources/images/agra1.jpg" alt="Agra">
				<div class="carousel-caption">
					<h3>Agra</h3>
					<p>Home to one of the 7 wonders of the world:Taj Mahal.</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/kerala2.jpg" alt="Kerala">
				<div class="carousel-caption">
					<h3>Kerala</h3>
					<p>City of Palm-lined Beaches and Backwaters.</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/mumbai1.jpg" alt="Mumbai">
				<div class="carousel-caption">
					<h3>Mumbai</h3>
					<p>Film City of India.</p>
				</div>
			</div>

			<div class="item">
				<img src="resources/images/jaipur1.jpg" alt="Jaipur">
				<div class="carousel-caption">
					<h3>Jaipur</h3>
					<p>Capital and Largest city of Rajasthan state.</p>
				</div>
			</div>


			<div class="item">
				<img src="resources/images/goa1.jpg" alt="Goa">
				<div class="carousel-caption">
					<h3>Goa</h3>
					<p>Sand, Sun and Spices.</p>
				</div>
			</div>

		</div>


		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>



	</div>
	<div class="body">
		<h2>Hello,guest</h2>
		Choose from amazing packages and deals.<br> <br>
		<a href="usersignup">Sign up</a>


	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp"%>
