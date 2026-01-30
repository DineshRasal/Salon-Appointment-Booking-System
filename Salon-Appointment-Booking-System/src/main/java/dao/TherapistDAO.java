package dao;

import model.Therapist;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TherapistDAO {

    Connection con = DBConnection.getConnection();

    // ADD THERAPIST
    public boolean addTherapist(Therapist t, int salonId) {
        boolean status = false;
        try {
            String sql = "INSERT INTO therapists(name,specialization,rating,salon_id) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, t.getName());
            ps.setString(2, t.getSpecialization());
            ps.setDouble(3, t.getRating());
            ps.setInt(4, salonId);

            status = ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // GET THERAPISTS BY SALON
    public List<Therapist> getTherapists(int salonId) {
        List<Therapist> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM therapists WHERE salon_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, salonId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Therapist t = new Therapist();
                t.setTherapistId(rs.getInt("therapist_id"));
                t.setName(rs.getString("name"));
                t.setSpecialization(rs.getString("specialization"));
                t.setRating(rs.getDouble("rating"));
                list.add(t);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
