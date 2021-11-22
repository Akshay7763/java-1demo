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


<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/style.css">
</html>

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
	<div id=nav></div>
	<div class="container">
		<form id="form" action="${pageContext.request.contextPath}/addbatch"
			method="post">
			<h1>Add Batch</h1>

			<hr />

			<label class="form-label">Batch Name:</label> <input
				class="form-control" type="text" name="name" required="required" />
			<label class="form-label">Batch Description:</label>
			<textarea class="form-control" name="description" cols="30" rows="3"
				required="required"></textarea>
			<label class="form-label">Batch Start Time:</label> <input
				class="form-control" type="time" name="startTime"
				required="required" /> <label class="form-label">Batch
				End Time:</label> <input class="form-control" type="time" name="endTime"
				required="required" /> <label class="form-label">Batch
				Size:</label> <input class="form-control" type="number" name="size"
				required="required" /> <label class="form-label">Fees:</label>
			<input class="form-control" type="number" name="fees"
				required="required" /> <label class="form-label">Sport
				Name:</label> <select class="form-control" name="sportId"
				required="required">
				<c:forEach items="${sportsList}" var="sport">
					<option value="${sport.sportId}">${sport.name}</option>
				</c:forEach>
			</select> <br /> <input class="btn btn-primary" type="submit"
				value="Add Batch" />
		</form>
	</div>
</body>
</html>
