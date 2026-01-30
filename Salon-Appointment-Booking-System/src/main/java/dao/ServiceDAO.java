package dao;

import model.Service;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAO {

    Connection con = DBConnection.getConnection();

    // ADD SERVICE
    public boolean addService(Service service, int salonId) {
        boolean status = false;
        try {
            String sql = "INSERT INTO services(name,price,salon_id) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, service.getName());
            ps.setDouble(2, service.getPrice());
            ps.setInt(3, salonId);

            status = ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // GET SERVICES BY SALON
    public List<Service> getServices(int salonId) {
        List<Service> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM services WHERE salon_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, salonId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service s = new Service();
                s.setServiceId(rs.getInt("service_id"));
                s.setName(rs.getString("name"));
                s.setPrice(rs.getDouble("price"));
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
