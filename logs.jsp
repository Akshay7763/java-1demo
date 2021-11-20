<%@page import="com.mysql.cj.xdevapi.JsonArray"%>
<%@page import="com.cybage.pojo.Offers"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.cybage.pojo.Batch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>All Logs</title>
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

<body>
	<div id="nav"></div>
	<div class="container">
		<br />
		<div class="row">
			<div class="col-3">
				<h3>All Log's</h3>
				<p style="color: #b5b5c3">User Logs Here</p>
			</div>
			<div class="col-5">
				<input class="form-control" type="search" id="search-text"
					onkeyup="search(JSON.parse(sessionStorage.getItem('logList')))"
					placeholder="Search by email..." />
			</div>
			<div class="col-2"></div>
		</div>

		<table>
			<thead id="table-head">
				<tr>
					<th colspan="2" class="col1">Log Description</th>
					<th>Date</th>
					<th>Log Id</th>
					<th>UserId</th>
				</tr>
			</thead>

			<tbody id="insert-log-here"></tbody>
		</table>
		<div id="notfound"></div>
	</div>
</body>

<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/style.css">
<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<script type="text/javascript"
	src="/DeccanSports/public/scripts/log_list_page.js"></script>
<script type="text/javascript"
	src="/DeccanSports/public/scripts/search.js"></script>


<script>
sessionStorage.setItem("logList", JSON.stringify(
	[<c:forEach items="${logList}" var="log" varStatus="id">${log.toJSON()},</c:forEach>]))

	printList(JSON.parse(sessionStorage.getItem("logList")))
</script>


</html>
