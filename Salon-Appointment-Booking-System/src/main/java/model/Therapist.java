package model;

public class Therapist {
    private int therapistId;
    private String name;
    private String specialization;
    private double rating;

    public int getTherapistId() { return therapistId; }
    public void setTherapistId(int therapistId) { this.therapistId = therapistId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getSpecialization() { return specialization; }
    public void setSpecialization(String specialization) { this.specialization = specialization; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }
}
