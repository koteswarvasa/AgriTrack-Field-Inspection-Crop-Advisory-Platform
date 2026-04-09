package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.CropDAO;
import com.agri.model.Crop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/addCrop")
public class AddCropServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String farmerName = request.getParameter("farmerName");
		String cropName = request.getParameter("cropName");
		String landArea = request.getParameter("landArea");
		String season = request.getParameter("season");

		Crop crop = new Crop();

		crop.setFarmerName(farmerName);
		crop.setCropName(cropName);
		crop.setLandArea(landArea);
		crop.setSeason(season);

		CropDAO dao = new CropDAO();

		if (dao.addCrop(crop)) {

			response.sendRedirect("crops.jsp");

		} else {

			response.sendRedirect("addCrop.jsp");

		}

	}

}