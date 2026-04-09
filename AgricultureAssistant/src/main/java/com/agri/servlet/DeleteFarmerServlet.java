package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.FarmerDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteFarmer")
public class DeleteFarmerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		FarmerDAO dao = new FarmerDAO();

		dao.deleteFarmer(id);

		response.sendRedirect("farmers.jsp");

	}

}