package com.agri.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.agri.model.Report;
import com.agri.util.DBConnection;

public class ReportDAO {

	// Add Report
	public boolean addReport(Report r) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "INSERT INTO reports(farmer_name, problem, suggestion) VALUES (?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, r.getFarmerName());
			ps.setString(2, r.getProblem());
			ps.setString(3, r.getSuggestion());

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// View Reports
	public List<Report> getAllReports() {

		List<Report> list = new ArrayList<>();

		try {

			Connection con = DBConnection.getConnection();

			String query = "SELECT * FROM reports";

			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Report r = new Report();

				r.setId(rs.getInt("id"));
				r.setFarmerName(rs.getString("farmer_name"));
				r.setProblem(rs.getString("problem"));
				r.setSuggestion(rs.getString("suggestion"));

				list.add(r);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// Delete Report
	public boolean deleteReport(int id) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "DELETE FROM reports WHERE id=?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, id);

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}