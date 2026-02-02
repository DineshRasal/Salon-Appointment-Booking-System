package model;

public class Appointment {

private int appointmentId;
private String date;
private String time;
private String status;

public int getAppointmentId() {
return appointmentId;
}

public void setAppointmentId(int id){
this.appointmentId=id;
}

public String getDate(){
return date;
}

public void setDate(String d){
this.date=d;
}

public String getTime(){
return time;
}

public void setTime(String t){
this.time=t;
}

public String getStatus(){
return status;
}

public void setStatus(String s){
this.status=s;
}
}
