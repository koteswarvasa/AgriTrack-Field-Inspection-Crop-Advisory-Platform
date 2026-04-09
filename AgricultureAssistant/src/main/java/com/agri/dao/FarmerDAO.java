package com.agri.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.agri.model.Farmer;
import com.agri.util.DBConnection;

public class FarmerDAO {

	// Add Farmer
	public boolean addFarmer(Farmer farmer) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "INSERT INTO farmers(name, village, mobile) VALUES (?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, farmer.getName());
			ps.setString(2, farmer.getVillage());
			ps.setString(3, farmer.getMobile());

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// View Farmers
	public List<Farmer> getAllFarmers() {

		List<Farmer> list = new ArrayList<>();

		try {

			Connection con = DBConnection.getConnection();

			String query = "SELECT * FROM farmers";

			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Farmer f = new Farmer();

				f.setId(rs.getInt("id"));
				f.setName(rs.getString("name"));
				f.setVillage(rs.getString("village"));
				f.setMobile(rs.getString("mobile"));

				list.add(f);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// Delete Farmer
	public boolean deleteFarmer(int id) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "DELETE FROM farmers WHERE id=?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, id);

			status = ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}