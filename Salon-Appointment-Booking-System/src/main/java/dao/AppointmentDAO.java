package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Appointment;
import util.DBConnection;

public class AppointmentDAO {

    // ================= BOOK APPOINTMENT =================

    public boolean bookAppointment(
            int customerId,
            int therapistId,
            int serviceId,
            String date,
            String time) {

        String sql =
        "INSERT INTO appointments " +
        "(customer_id, therapist_id, service_id, " +
        "appointment_date, appointment_time, status) " +
        "VALUES(?,?,?,?,?,'PENDING')";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, customerId);
            ps.setInt(2, therapistId);
            ps.setInt(3, serviceId);
            ps.setString(4, date);
            ps.setString(5, time);

            int row = ps.executeUpdate();

            System.out.println("ROWS INSERTED = " + row);

            return row > 0;

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("BOOK APPOINTMENT FAILED");
        }

        return false;
    }

    // ================= GET APPOINTMENTS BY USER =================

    public List<Appointment> getAppointmentsByUser(int userId) {

        List<Appointment> list = new ArrayList<>();

        String sql =
        "SELECT * FROM appointments WHERE customer_id=?";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, userId);

            try (ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {

                    Appointment a = new Appointment();

                    a.setAppointmentId(
                        rs.getInt("appointment_id")
                    );

                    a.setDate(
                        rs.getString("appointment_date")
                    );

                    a.setTime(
                        rs.getString("appointment_time")
                    );

                    a.setStatus(
                        rs.getString("status")
                    );

                    list.add(a);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("FETCH APPOINTMENTS FAILED");
        }

        return list;
    }

    // ================= UPDATE STATUS (ADMIN APPROVE/REJECT) =================

    public boolean updateStatus(int appointmentId, String status) {

        String sql =
        "UPDATE appointments SET status=? WHERE appointment_id=?";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, status);
            ps.setInt(2, appointmentId);

            int row = ps.executeUpdate();

            System.out.println("STATUS UPDATED = " + row);

            return row > 0;

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("UPDATE STATUS FAILED");
        }

        return false;
    }
    
    public List<Appointment> getAllAppointments(){

    	List<Appointment> list = new ArrayList<>();

    	try{

    	String sql = "SELECT * FROM appointments";

    	Connection con = DBConnection.getConnection();

    	PreparedStatement ps = con.prepareStatement(sql);

    	ResultSet rs = ps.executeQuery();

    	while(rs.next()){

    	Appointment a = new Appointment();

    	a.setAppointmentId(
    	rs.getInt("appointment_id"));

    	a.setDate(
    	rs.getString("appointment_date"));

    	a.setTime(
    	rs.getString("appointment_time"));

    	a.setStatus(
    	rs.getString("status"));

    	list.add(a);
    	}

    	}catch(Exception e){
    	e.printStackTrace();
    	}

    	return list;
    	}

}
