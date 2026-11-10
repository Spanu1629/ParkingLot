<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Cars">
  <h1>Cars</h1>
  <div class="table-responsive">
    <table class="table">
      <thead>
      <tr>
        <th scope="col">License plate</th>
        <th scope="col">Parking spot</th>
        <th scope="col">Owner</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="car" items="${cars}">
        <tr>
          <td>${car.licensePlate}</td>
          <td>${car.parkingSpot}</td>
          <td>${car.ownerName}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</t:pageTemplate>
