<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>NEWYORKTIME</title>
  <script src="/Resource/ckeditor/ckeditor.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="/Resource/css/css.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
          <div class="col-md-1">
            <p style="position: center"></p>
          </div>
          <div class="col-md-8">
            <p class="titles" style="text-align: center; margin-top: 40px">CREATE POST NEW</p>
            <c:if test="${id==null }">
            	 <form method="post" action="/CreateNew/Create">
            </c:if>
           
            <c:if test="${id!=null }">
            	 <form method="post" action="/createNew/edits/${id }">
            </c:if>
            <c:if test="${id==null }">
            	<div class="form-group">
	              <label for="title">Title:</label>
	              <input name=title type="text" class="form-control" id="title" >
	            </div>
            </c:if>
            <c:if test="${id!=null }">
            	 <div class="form-group">
	              <label for="title">Title:</label>
	              <input name=title type="text" class="form-control" id="title" value="${title }">
	            </div>
            </c:if>           
            <div class="form-group">
              <label for="content">Content:</label>
             	 <c:if test="${id==null }">
                  <textarea name="Content" id="ten" ></textarea>
                  <script>CKEDITOR.replace('ten');</script>
                  <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2">
                      <button type="submit" class="btn btn-outline-secondary btns">Hoàn thành<i class="fa fa-thumbs-o-up" style="font-size:24px; margin-left: 3px"></i></button>
                    </div>
                    
                  </div>
                  </c:if>
                  <c:if test="${id!=null }">
                  	<textarea name="Content" id="ten" >${content}</textarea>
                  <script>CKEDITOR.replace('ten');</script>
                  <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2">
                      <button type="submit" class="btn btn-outline-secondary btns">Hoàn thành<i class="fa fa-thumbs-o-up" style="font-size:24px; margin-left: 3px"></i></button>
                    </div>
                    
                  </div>
                  </c:if>
            
            </div>
            </form>
          </div>
          <div class="col-md-2">
            <p style="text-align: center; margin-top: 40px">NEWS</p>
          </div>
          <div class="col-md-1">
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