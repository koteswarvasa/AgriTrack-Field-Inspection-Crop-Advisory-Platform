package com.agri.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.agri.model.Crop;
import com.agri.util.DBConnection;

public class CropDAO {

	// Add Crop
	public boolean addCrop(Crop crop) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "INSERT INTO crops(farmer_name, crop_name, land_area, season) VALUES (?, ?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, crop.getFarmerName());
			ps.setString(2, crop.getCropName());
			ps.setString(3, crop.getLandArea());
			ps.setString(4, crop.getSeason());

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// View Crops
	public List<Crop> getAllCrops() {

		List<Crop> list = new ArrayList<>();

		try {

			Connection con = DBConnection.getConnection();

			String query = "SELECT * FROM crops";

			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Crop c = new Crop();

				c.setId(rs.getInt("id"));
				c.setFarmerName(rs.getString("farmer_name"));
				c.setCropName(rs.getString("crop_name"));
				c.setLandArea(rs.getString("land_area"));
				c.setSeason(rs.getString("season"));

				list.add(c);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// Delete Crop
	public boolean deleteCrop(int id) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "DELETE FROM crops WHERE id=?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, id);

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}