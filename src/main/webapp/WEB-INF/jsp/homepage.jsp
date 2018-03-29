<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>NEWYORKTIME</title>	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/Resource/css/css.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	
		<div class="header">
			<p class="titles">NEWYORK TIME</p>
		</div>
		<nav class ="navbar navbar-expand-sm bg-dark navbar-dark sticky-top" >
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/home">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/news">New</a>
				</li>
				
				<c:if test="${userName ==null}">
				<li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
				</c:if>
				<c:if test="${userName !=null}">
				<li class="nav-item"><a class="nav-link" href="/CreateNew">CreateNewPost</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
				</c:if>
				<li class="nav-item"><a class="nav-link" style="color: white">HELLO!!! ${fullName }</a></li>
			</ul>
		</nav>

		<div class="content">
			<div class="col-md-12 col-lg-12 container-fluid" id="banner">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/Resource/image/coffee1.jpg" alt="Los Angeles" width="100%" height="500px">
							<div class="carousel-caption">
								<h3>Los Angeles</h3>
								<p>We had such a great time in LA!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="/Resource/image/coffee2.jpg" alt="Chicago" width="100%" height="500px">
							<div class="carousel-caption">
								<h3>Chicago</h3>
								<p>Thank you, Chicago!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="/Resource/image/coffee3.jpg" alt="New York" width="100%" height="500px">
							<div class="carousel-caption">
								<h3>New York</h3>
								<p>We love the Big Apple!</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>	
					<a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>							
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2">
						<p style="position: center"></p>
					</div>
					<div class="col-md-6">
						<p class="titles" style="text-align: center; margin-top: 40px">WELCOME TO NEWYORKTIMES</p>
						<div  style="border-right: 2px, border-right-color: black">  System Science and Engineering has emerged as a research field that covers a wide spectrum of modern technology. A system can be considered as a collection of entities and their interrelationships gathered together to form a whole greater than the sum of the entities. It also involves people, organizations, cultures, activities and interrelationships among them. While systems composed of autonomous subsystems are not new, increased data density, connectivity and ubiquitous computational resources have increased their interdependence and interaction complexity. This has in turn made the already difficult job of planning, developing and deploying complex systems even more difficult.

						   Technology advancement not only provides opportunities for improving system capabilities but also introduces development risks that must be weighed and managed. Thus, it is our goal to bring together scholars from all areas to have a forum to discuss, demonstrate and exchange research ideas in the scope of system science and engineering.

						   The International Conference on System Science and Engineering 2017 (ICSSE 2017) is an international conference that will take place in Ho Chi Minh City during July 21-23, 2017. This event will provide a great opportunity for scientists, engineers, and practitioners from all over the world to present the latest system design concepts, research results, developments and applications, as well as to facilitate interactions between scholars and practitioners. ICSSE 2017 will feature plenary speeches in emerging technology topics given by world renowned scholars. The proceedings of ICSSE 2017 will be published by the IEEE with EI indexing. In addition, selected high-quality papers will be published by special issues of SCI-indexed journals. </div>
					</div>
					<div class="col-md-2"><c:forEach var="n" items ="${listNew }">
						<div style="margin-top: 40px">					
					
								<a href="/changeLinkNews/${n.newID }" ><i>${n.title }</i></a>
							
						</div>
						</c:forEach>
						
					</div>
					<div class="col-md-2">
						<p style="text-align: center;"></p>
					</div>
				</div>
			</div>
			<div class="container-fluid" style="margin-top: 40px">
				<div class="row">
					<div class="col-md-3 navs"><span class="rounded-circle"></span></div>
					<div class="col-md-3 navs"><span class="rounded-circle"></span></div>
					<div class="col-md-3 navs"><span class="rounded-circle"></span></div>
					<div class="col-md-3 navs"><span class="rounded-circle"></span></div>
				</div>
			</div>
		</div>	
		</div>	
	</div>
	<script>
		window.onscroll = function() {myFunction()};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function myFunction() {
		  	if (window.pageYOffset >= sticky) {
		    	navbar.classList.add("sticky")
		  	} else {
			    navbar.classList.remove("sticky");
			}
		}

	</script>
</body>
</html>