package com.parking.parkinglot.servlets;

import com.parking.parkinglot.ejb.CarsBean;
import com.parking.parkinglot.ejb.UsersBean;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "EditCar", value = "/EditCar")
@ServletSecurity(value = @HttpConstraint(rolesAllowed = {"WRITE_CARS"}))
public class EditCar extends HttpServlet {
    @Inject
    private UsersBean usersBean;

    @Inject
    private CarsBean carsBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("users", usersBean.findAllUsers());
        Long carId = Long.parseLong(request.getParameter("id"));
        request.setAttribute("car", carsBean.findById(carId));
        request.getRequestDispatcher("/WEB-INF/pages/editCar.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String licensePlate = request.getParameter("license_plate");
        String parkingSpot = request.getParameter("parking_spot");
        Long userId = Long.parseLong(request.getParameter("owner_id"));
        Long carId = Long.parseLong(request.getParameter("car_id"));

        carsBean.updateCar(carId, licensePlate, parkingSpot, userId);
        response.sendRedirect(request.getContextPath() + "/Cars");
    }
}
