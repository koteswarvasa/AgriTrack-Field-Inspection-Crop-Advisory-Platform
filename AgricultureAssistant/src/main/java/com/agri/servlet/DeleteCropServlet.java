package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.CropDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteCrop")
public class DeleteCropServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		CropDAO dao = new CropDAO();

		dao.deleteCrop(id);

		response.sendRedirect("crops.jsp");

	}

}