package dao;

import model.Salon;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SalonDAO {

    Connection con = DBConnection.getConnection();

    // ADD SALON
    public boolean addSalon(Salon salon, int adminId) {
        boolean status = false;
        try {
            String sql = "INSERT INTO salons(name,location,admin_id) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, salon.getName());
            ps.setString(2, salon.getLocation());
            ps.setInt(3, adminId);

            status = ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // SEARCH SALON BY LOCATION
    public List<Salon> searchSalon(String location) {
        List<Salon> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM salons WHERE location LIKE ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + location + "%");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Salon salon = new Salon();
                salon.setSalonId(rs.getInt("salon_id"));
                salon.setName(rs.getString("name"));
                salon.setLocation(rs.getString("location"));
                list.add(salon);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
