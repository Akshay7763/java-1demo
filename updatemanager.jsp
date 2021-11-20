<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Update Manager</title>
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
	<div id=nav></div>
	<div class="container">

		<form id="form" action="${pageContext.request.contextPath}/updateManager"
			method="post">
			<h1>Update Manager</h1>

			<hr />

			<label class="form-label">Manager Name:</label> <input
				class="form-control" type="text" name="name" value="${manager.name}"
				required="required" />
				
				<label class="form-label">Email:</label> <input
				class="form-control" type="email" name="email" value="${manager.email}"
				required="required" />
				
				<label class="form-label">Password:</label> <input
				class="form-control" type="text" name="password" value="${manager.password}"
				required="required" />
				
				<label class="form-label">Gender:</label> 
				<input name="gender" id="myInput" type="radio" value="male" 
				<c:if test="${manager.gender eq 'male'}">checked</c:if>
				/>
                  <label >Male</label>
              
                  <input
                    name="gender"
                    id="myInput"
                    type="radio"
                    value="female"
                    <c:if test="${manager.gender eq 'female'}">checked</c:if>
                  />
                  <label >Female</label>
               
                  <input
                    name="gender"
                    id="myInput"
                    type="radio"
                    value="other"
                    <c:if test="${manager.gender eq 'other'}">checked</c:if>
                  />
                  <label >Other</label>
				
				 <br /><br /> <input class="btn btn-primary"
				type="submit" value="Update Manager" />
		</form>
	</div>
</body>


<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/style.css">
</html>


