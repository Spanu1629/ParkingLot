<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Cars">
  <h1>Cars</h1>
  <form method="POST" action="${pageContext.request.contextPath}/Cars">
    <a href="${pageContext.request.contextPath}/AddCar" class="btn btn-primary btn-lg">Add Car</a>
    <button class="btn btn-danger" type="submit">Delete Cars</button>
    <div class="table-responsive">
      <table class="table">
        <thead>
        <tr>
          <th scope="col"></th>
          <th scope="col">License plate</th>
          <th scope="col">Parking spot</th>
          <th scope="col">Owner</th>
          <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="car" items="${cars}">
          <tr>
            <td><input type="checkbox" name="car_ids" value="${car.id}"></td>
            <td>${car.licensePlate}</td>
            <td>${car.parkingSpot}</td>
            <td>${car.ownerName}</td>
            <td><a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a></td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </form>
</t:pageTemplate>
