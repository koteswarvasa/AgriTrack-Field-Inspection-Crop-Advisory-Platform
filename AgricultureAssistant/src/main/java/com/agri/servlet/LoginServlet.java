package com.agri.servlet;

import java.io.IOException;

import com.agri.dao.AssistantDAO;
import com.agri.model.Assistant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Assistant assistant = new Assistant();

		assistant.setUsername(username);
		assistant.setPassword(password);

		AssistantDAO dao = new AssistantDAO();

		if (dao.validateAssistant(assistant)) {

			HttpSession session = request.getSession();

			session.setAttribute("assistant", username);

			response.sendRedirect("dashboard.jsp");

		} else {

			response.sendRedirect("login.jsp?error=invalid");

		}

	}

}