<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Cars">
  <h1>Cars</h1>
  <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
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
      <tr>
        <td>CJ 01 ABC</td>
        <td>1</td>
        <td>Alex Pop</td>
      </tr>
      <tr>
        <td>CJ 02 DEF</td>
        <td>2</td>
        <td>Maria Ionescu</td>
      </tr>
      <tr>
        <td>CJ 03 GHI</td>
        <td>3</td>
        <td>Andrei Popescu</td>
      </tr>
      </tbody>
    </table>
  </div>
</t:pageTemplate>
