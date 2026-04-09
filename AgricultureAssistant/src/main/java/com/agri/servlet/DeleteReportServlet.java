package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.ReportDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteReport")
public class DeleteReportServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		ReportDAO dao = new ReportDAO();

		dao.deleteReport(id);

		response.sendRedirect("reports.jsp");

	}

}