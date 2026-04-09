package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.FertilizerDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteFertilizer")
public class DeleteFertilizerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		FertilizerDAO dao = new FertilizerDAO();

		dao.deleteFertilizer(id);

		response.sendRedirect("fertilizer.jsp");

	}

}