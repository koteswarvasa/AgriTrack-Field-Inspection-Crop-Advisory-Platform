package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.FarmerDAO;
import com.agri.model.Farmer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/addFarmer")
public class AddFarmerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String village = request.getParameter("village");
		String mobile = request.getParameter("mobile");

		Farmer farmer = new Farmer();

		farmer.setName(name);
		farmer.setVillage(village);
		farmer.setMobile(mobile);

		FarmerDAO dao = new FarmerDAO();

		if (dao.addFarmer(farmer)) {

			response.sendRedirect("farmers.jsp");

		} else {

			response.sendRedirect("addFarmer.jsp");

		}

	}

}