package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.ReportDAO;
import com.agri.model.Report;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/addReport")
public class AddReportServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String farmerName = request.getParameter("farmerName");
		String problem = request.getParameter("problem");
		String suggestion = request.getParameter("suggestion");

		Report r = new Report();

		r.setFarmerName(farmerName);
		r.setProblem(problem);
		r.setSuggestion(suggestion);

		ReportDAO dao = new ReportDAO();

		if (dao.addReport(r)) {

			response.sendRedirect("reports.jsp");

		} else {

			response.sendRedirect("addReport.jsp");

		}

	}

}