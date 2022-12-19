package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.util.Date;

public class Order {
    private String id_order;
    private String id_user;
    private String hoten;
    private String thanhpho;
    private String huyen;
    private String address;
    private String phone;
    private String email;
    private String state;
    private double  total_money;
    private String date_time;
    private String note;
    private Date date;



    public Order(){

    }

    public Order(String id_order, String id_user, String hoten, String address, String phone, String email, String state, double total_money, Date date_time) {
        this.id_order = id_order;
        this.id_user = id_user;
        this.hoten = hoten;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.state = state;
        this.total_money = total_money;
        this.date = date_time;
    }

    public String getId_order() {
        return id_order;
    }

    public void setId_order(String id_order) {
        this.id_order = id_order;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getThanhpho() {
        return thanhpho;
    }

    public void setThanhpho(String thanhpho) {
        this.thanhpho = thanhpho;
    }

    public String getHuyen() {
        return huyen;
    }

    public void setHuyen(String huyen) {
        this.huyen = huyen;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public double getTotal_money() {
        return total_money;
    }

    public void setTotal_money(double total_money) {
        this.total_money = total_money;
    }

    public String getDate_time() {
        return date_time;
    }

    public void setDate_time(String date_time) {
        this.date_time = date_time;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    @Override
    public String toString() {
        return "Order{" +
                "id_order='" + id_order + '\'' +
                ", id_user='" + id_user + '\'' +
                ", hoten='" + hoten + '\'' +
                ", thanhpho='" + thanhpho + '\'' +
                ", huyen='" + huyen + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", state='" + state + '\'' +
                ", total_money=" + total_money +
                ", date_time='" + date_time + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}

