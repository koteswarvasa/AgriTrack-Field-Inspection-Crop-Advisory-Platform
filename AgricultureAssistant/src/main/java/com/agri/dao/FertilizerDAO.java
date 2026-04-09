package com.agri.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.agri.model.Fertilizer;
import com.agri.util.DBConnection;

public class FertilizerDAO {

	// Add Fertilizer
	public boolean addFertilizer(Fertilizer f) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "INSERT INTO fertilizer(crop_name, fertilizer_name, description) VALUES (?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, f.getCropName());
			ps.setString(2, f.getFertilizerName());
			ps.setString(3, f.getDescription());

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// View Fertilizers
	public List<Fertilizer> getAllFertilizers() {

		List<Fertilizer> list = new ArrayList<>();

		try {

			Connection con = DBConnection.getConnection();

			String query = "SELECT * FROM fertilizer";

			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Fertilizer f = new Fertilizer();

				f.setId(rs.getInt("id"));
				f.setCropName(rs.getString("crop_name"));
				f.setFertilizerName(rs.getString("fertilizer_name"));
				f.setDescription(rs.getString("description"));

				list.add(f);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// Delete Fertilizer
	public boolean deleteFertilizer(int id) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "DELETE FROM fertilizer WHERE id=?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, id);

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}