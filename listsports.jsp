<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Sports List</title>
</head>
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

<!-- google font - poppins -->
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet" />

<!-- jquery -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<body>
	<div id="nav"></div>
	<div class="container">
		<br />
		<div class="row">
			<div class="col-2">
				<h3>Sport's List</h3>
				<p style="color: #b5b5c3">Variety of sports</p>
			</div>
			<div class="col-6">
				<input class="form-control" type="search" id="search-text"
					onkeyup="search(JSON.parse(sessionStorage.getItem('sportList')))"
					placeholder="Search by sport name..." />
			</div>
			<div class="col-2"></div>
			<div class="col-2" id="addbutton"></div>
		</div>
		<hr />

		<table>
			<thead id="table-head">
				<tr>
					<th colspan="2" class="col1">Name</th>
					<th>Sport Id</th>
					<th>Batches</th>
				</tr>
			</thead>

			<tbody id="insert-sport"></tbody>
		</table>

		<div id="notfound"></div>
	</div>
	
</body>

<link type="text/css" rel="stylesheet"
	href="/DeccanSports/public/css/style.css">
<script type="text/javascript"
	src="/DeccanSports/public/scripts/nav_script.js"></script>
<script type="text/javascript"
	src="/DeccanSports/public/scripts/search.js"></script>
<script type="text/javascript"
	src="/DeccanSports/public/scripts/sport_list_page.js"></script>
<script hidden>
  sessionStorage.setItem("sportList",JSON.stringify(
		  [<c:forEach items="${sportsList}" var="sport">${sport.toJSON()},</c:forEach>]
  ))
  printList(JSON.parse(sessionStorage.getItem("sportList")))
  </script>
</html>
