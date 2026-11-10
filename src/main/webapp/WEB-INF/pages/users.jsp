<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Users">
  <h1>Users</h1>
  <div class="table-responsive">
    <table class="table">
      <thead>
      <tr>
        <th scope="col">Username</th>
        <th scope="col">Email</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="user" items="${users}">
        <tr>
          <td>${user.username}</td>
          <td>${user.email}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</t:pageTemplate>
