<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Update Batch</title>
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
		<form id="form"
			action="${pageContext.request.contextPath}/updatebatch" method="post">
			<h1>Update Batch</h1>
			<hr />
			<label class="form-label">Batch Id:</label> <input
				class="form-control" type="number" name="batchId"
				value="${batch.batchId}" readonly="readonly" /> <label
				class="form-label">Batch Name:</label> 
				
			<input class="form-control"
				type="text" name="name" value="${batch.name}" required="required" />
			<label class="form-label">Batch Description:</label>
			
			<textarea class="form-control" name="description" cols="30" rows="3"
				required="required">${batch.description}</textarea>
			
			<div class="row">
				<div class="col">
					<label class="form-label">Batch Start Time:</label> <input
						class="form-control" type="time" name="startTime"
						value="${batch.startTime}" required="required" />
				</div>
				<div class="col">
					<label class="form-label">Batch End Time:</label> <input
						class="form-control" type="time" name="endTime"
						value="${batch.endTime}" required="required" />
				</div>
			</div>

			<div class="row">
				<div class="col">
					<label class="form-label">Batch Size:</label> <input
						class="form-control" type="number" name="size"
						value="${batch.size}" required="required" />
				</div>
				<div class="col">
					<label class="form-label">Fees:</label> <input class="form-control"
						type="number" name="fees" value="${batch.fees}"
						required="required" />
				</div>
			</div>

			<label class="form-label">Sport Name: </label> <select
				class="form-control" name="sportId" required="required">
				<c:forEach items="${sportsList}" var="sport">
					<c:if test="${sport.sportId eq batch.sportId}">
						<option value="${sport.sportId}" selected>${sport.name}</option>
					</c:if>
					<option value="${sport.sportId}">${sport.name}</option>
				</c:forEach>
			</select> <br /> <br /> <input class="btn btn-primary" type="submit"
				value="Update Batch" />
		</form>
	</div>
</body>
</html>
