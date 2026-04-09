package com.agri.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.agri.model.Assistant;
import com.agri.util.DBConnection;

public class AssistantDAO {

	public boolean validateAssistant(Assistant assistant) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "SELECT * FROM assistant WHERE username=? AND password=?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, assistant.getUsername());
			ps.setString(2, assistant.getPassword());

			ResultSet rs = ps.executeQuery();

			status = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}