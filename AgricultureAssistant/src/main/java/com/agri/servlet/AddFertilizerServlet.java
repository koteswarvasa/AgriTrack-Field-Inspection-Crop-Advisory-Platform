package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.FertilizerDAO;
import com.agri.model.Fertilizer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/addFertilizer")
public class AddFertilizerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cropName = request.getParameter("cropName");
		String fertilizerName = request.getParameter("fertilizerName");
		String description = request.getParameter("description");

		Fertilizer f = new Fertilizer();

		f.setCropName(cropName);
		f.setFertilizerName(fertilizerName);
		f.setDescription(description);

		FertilizerDAO dao = new FertilizerDAO();

		if (dao.addFertilizer(f)) {

			response.sendRedirect("fertilizer.jsp");

		} else {

			response.sendRedirect("addFertilizer.jsp");

		}

	}

}