<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enrollment Requests</title>
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

<!-- Moment.js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"
	integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<%
	out.print("<style>");
%>
<c:import url="/public/css/style.css"></c:import>
<%
	out.print("</style>");
%>

<body onload="load()">
	<div id="nav"></div>
	<div class="container">
		<br />
		<div class="row">
			<div class="col-10">
				<h3>Enrollment Request's</h3>
				<p style="color: #b5b5c3">Accept and Reject Users Request's</p>
			</div>
		</div>

		<table>
			<thead>
				<tr>
					<th colspan="2" class="col1">Name</th>
					<th>User</th>
					<th>Registration Date</th>
					<th>Approve</th>
					<th>Reject</th>
				</tr>
			</thead>
			<tbody id="insert-enroll-list"></tbody>
		</table>
		
		<div id="notfound"></div>
	</div>
</body>
<script>
	<c:import url="/public/scripts/nav_script.js"></c:import>
	<c:import url="/public/scripts/enrollment_list_page.js"></c:import>
	<c:forEach items="${enrollmentList}" var="enrollment">
		addToEnrollmentList('${enrollment.name}', '${enrollment.gender}', '${enrollment.batchName}', '${enrollment.sportName}', '${enrollment.membershipId}','${enrollment.startDate}', '${enrollment.endDate}', '${enrollment.status}', '${enrollment.startTime}', '${enrollment.endTime}');
	</c:forEach>
	
	printList(JSON.parse(sessionStorage.getItem("enrollmentList")));
</script>
</html>