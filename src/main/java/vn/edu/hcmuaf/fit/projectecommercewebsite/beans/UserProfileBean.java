package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.util.Calendar;
import java.util.Date;

public class UserProfileBean {
    private String user_id;
    private Date birthDay;
    private String gender;
    private String nationality;

    public UserProfileBean(String user_id, Date birthDay, String gender, String nationality) {
        this.user_id = user_id;
        this.birthDay = birthDay;
        this.gender = gender;
        this.nationality = nationality;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public int getDayOfBirth(){

        Calendar cal = Calendar.getInstance();
        cal.setTime(getBirthDay());
        int day = cal.get(Calendar.DATE);

        return day;
    }

    public int getMonthOfBirth(){
        Calendar cal = Calendar.getInstance();
        cal.setTime(getBirthDay());
        int month = cal.get(Calendar.MONTH);
        return month+1;
    }

    public int getYearOfBirth(){
        Calendar cal = Calendar.getInstance();
        cal.setTime(getBirthDay());
        int year = cal.get(Calendar.YEAR);
        return year;
    }

    @Override
    public String toString() {
        return "UserProfile{" +
                "user_id='" + user_id + '\'' +
                ", birthDay=" + birthDay.toString() +
                ", gender='" + gender + '\'' +
                ", nationality='" + nationality + '\'' +
                '}';
    }
}
