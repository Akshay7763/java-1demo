<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Manager Home</title>
</head>

<script>
    sessionStorage.setItem("login_details",JSON.stringify(${user.toJSON()}));

    function load(){
    	var helloText = "Hello " + '${user.name}';
    	document.getElementById("hello").innerHTML = helloText.slice(0,6)+helloText.charAt(6).toUpperCase()+helloText.slice(7);
    }
  </script>

<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet" />

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<!-- moment -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.2/moment.min.js"></script>

<body onload="load()">

	<div id="nav"></div>
	<div class="container">
		<br />
		<h2>
			<strong>Hello Manager</strong>
		</h2>
		<hr />

		<!-- clock -->
		<div class="clock-container">
			<div class="clock-col" id="morning">
				<h1>🌅</h1>
				<h1>Good Morning</h1>
			</div>
			<div class="clock-col" id="afternoon">
				<h1>⛅️</h1>
				<h1>Good Afternoon</h1>
			</div>
			<div class="clock-col" id="evening">
				<h1>🌇</h1>
				<h1>Good Evening</h1>
			</div>
			<div class="clock-col">
				<p class="clock-day clock-timer"></p>
				<p class="clock-label">Day</p>
			</div>
			<div class="clock-col">
				<p class="clock-hours clock-timer"></p>
				<p class="clock-label">Hours</p>
			</div>
			<div class="clock-col">
				<p class="clock-minutes clock-timer"></p>
				<p class="clock-label">Minutes</p>
			</div>
			<div class="clock-col">
				<p class="clock-seconds clock-timer"></p>
				<p class="clock-label">Seconds</p>
			</div>
		</div>

		<!-- top row -->
		<div class="row top">
			<!-- 1st block -->
			<div class="col top-1"
				onclick="window.location.href='/DeccanSports/listsports'">
				<label><strong>Active Sports</strong></label> <label class="arrow">🏋</label>
				<h2>${count.sports}</h2>
				<label>View</label> <label class="arrow">&#8594;</label>
			</div>

			<!-- 2st block -->
			<div class="col top-2"
				onclick="window.location.href='/DeccanSports/listbatch'">
				<label><strong>Active Batches</strong></label> <label class="arrow">📅</label>
				<h2>${count.batches}</h2>
				<label>View</label> <label class="arrow">&#8594;</label>
			</div>

			<!-- 3rd block -->
			<div class="col top-3"
				onclick="window.location.href='/DeccanSports/listoffer'">
				<label><strong>Active Offers</strong></label> <label class="arrow">🎫</label>
				<h2>${count.offers}</h2>
				<label>View</label> <label class="arrow">&#8594;</label>
			</div>

			<!-- 4th block -->
			<div class="col top-4"
				onclick="window.location.href='/DeccanSports/enrollmentlist'">
				<label><strong>Enrollment</strong></label> <label class="arrow">👦</label>
				<h2>${count.enrollmentRequests}</h2>
				<label>View</label> <label class="arrow">&#8594;</label>
			</div>
		</div>
	</div>
</body>

<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/home.css">
<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/clock.css">

<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<script type="text/javascript"
	src="/DeccanSports/public/scripts/clock.js"></script>

</html>
