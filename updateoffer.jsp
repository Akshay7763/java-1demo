<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Update Batch</title>
  </head>
  <!-- CSS only -->
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
    crossorigin="anonymous"
  />
  <!-- JavaScript Bundle with Popper -->
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
    crossorigin="anonymous"
  ></script>

  <style>
    .container {
      margin-top: 20px;
      margin-bottom: 20px;
    }

    form {
      margin: auto;
      width: 80%;
      padding: 5%;
      border: 1px solid lightgray;
    }

    input,
    textarea {
      margin-bottom: 10px;
    }
  </style>
  <body>
    <div id="nav"></div>
    <div class="container">
      <form
        action="${pageContext.request.contextPath}/updateoffer"
        method="post"
      >
        <h1>Update Offer</h1>
        <label class="form-label">Offer Id:</label>
        <input
          class="form-control"
          type="number"
          name="offerId"
          value="${offer.offerId}"
          readonly="readonly"
        />
        <label class="form-label">Offer Name:</label>
        <input
          class="form-control"
          type="text"
          name="name"
          value="${offer.name}"
          required="required"
        />
        <label class="form-label">Offer Description:</label>
        <textarea
          class="form-control"
          name="description"
          cols="30"
          rows="3"
          required="required"
        >
${offer.description}</textarea
        >
        <label class="form-label">Offer Start Date:</label>
        <input
          class="form-control"
          type="date"
          name="startTime"
          value="${offer.startDate}"
          required="required"
        />
        <label class="form-label">Offer End Date:</label>
        <input
          class="form-control"
          type="date"
          name="endTime"
          value="${offer.endDate}"
          required="required"
        />
        <label class="form-label">Discount:</label>
        <input
          class="form-control"
          type="number"
          name="discount"
          value="${offer.discount}"
          required="required"
        />
        <label class="form-label">Offer is Active:</label>
        <input
          class="form-control"
          type="text"
          name="isActive"
          value="${offer.isActive}"
          required="required"
          readonly="readonly"
        />
        <br />
        <input class="btn btn-primary" type="submit" value="Update Offers" />
      </form>
    </div>
  </body>
</html>
