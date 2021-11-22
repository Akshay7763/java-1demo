<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Batch Enrollment</title>
</head>
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
* {
	font-family: "Poppins";
}
.container {
	margin-top: 20px;
	margin-bottom: 20px;
}

input, textarea {
	margin-bottom: 10px;
}
table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 1em;
}
</style>
<body>
	<div id="nav"></div>
	<div class="container">
		<form action="${pageContext.request.contextPath}/addMembership"
			method="post">
			<br /> <b />
			<div class="row">
				<div class="col">
					<h3>Batch Details :</h3>
					<hr />
					<table class="table">
						<tr>
							<td>Batch Id :</td>
							<td><input style="width: fit-content;" type="number"
								class="form-control" name="batchId" value="${batch.batchId}"
								readonly="readonly" /></td>
						</tr>
						<tr>
							<td>Name :</td>
							<td>${batch.name}</td>
						</tr>
						<tr>
							<td>Description :</td>
							<td>${batch.description}</td>
						</tr>
						<tr>
							<td>Timing :</td>
							<td>${batch.startTime}-${batch.endTime}</td>
						</tr>
						<tr>
							<td>Fees :</td>
							<td>${batch.fees}</td>
						</tr>
					</table>
				</div>

				<div class="col">

					<h3>Select Offer:</h3>
					<hr />
					<!-- <label class="form-label">Available Offers: </label> -->
					<select id="offers" class="form-control" name="offerId"
						required="required">
						<option value="1" selected>None</option>
					</select> <br />
					<h5>Summary :</h5>
					<hr />
					<table class="table">
						<tr>
							<td>Price :</td>
							<td id="price">${batch.fees}</td>
						</tr>
						<tr>
							<td>Discount :</td>
							<td id="discount">0 %</td>
						</tr>
						<tr>
							<td>Total :</td>
							<td><input type="number" name="offerPrice" id="total"
								class="form-control" value="${batch.fees}" readonly="readonly"
								style="width: fit-content;" /></td>
						</tr>
						<tr>
							<td colspan="2"><input class="btn btn-primary" type="submit"
								value="Enroll" style="width: 100%" /></td>
						</tr>
					</table>
				</div>
			</div>
			<br /> <br />
		</form>

	</div>
</body>


<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<script type="text/javascript"
	src="/DeccanSports/public/scripts/enrollbatch_page.js"></script>

<script>
sessionStorage.setItem("offerList", JSON.stringify(
	[<c:forEach items="${offerList}" var="offer" varStatus="id">${offer.toJSON()},</c:forEach>]))
	printList(JSON.parse(sessionStorage.getItem("offerList")))
</script>

</html>
