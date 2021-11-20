<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Add Batch</title>
</head>
<!-- Popins Font -->
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet" />

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
	crossorigin="anonymous" />
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<style>
.container {
	margin-top: 20px;
	margin-bottom: 20px;
}

#form {
	margin: auto;
	width: 80%;
	padding: 5%;
	border: 1px solid lightgray;
}

input, textarea {
	margin-bottom: 10px;
}
</style>
<body>
	<div id="nav"></div>
	<div class="container">
		<form id="form" action="${pageContext.request.contextPath}/updatesport"
			method="post">
			<h1>Update Sport</h1><hr/><br/>
			<label class="form-label">Sport Id:</label> <input
				class="form-control" type="number" name="sportId"
				value="${sport_details.sportId}" readonly="readonly" /> <label
				class="form-label">Sport Name:</label> <input class="form-control"
				type="text" name="sportName" value="${sport_details.name}"
				required="required" /> <br /> <input
				class="btn btn-primary" type="submit" value="Update Offer" />
		</form>
	</div>
</body>


<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/style.css">
</html>

</html>
