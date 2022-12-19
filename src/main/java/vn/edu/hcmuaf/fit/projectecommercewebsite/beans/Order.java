package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.OrderDao;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class Order {
    private String id_order;
    private String id_user;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String status_id;
    private Double order_total;
    private Date createAt;
    private List<OrderItem> ListOrderItems = new ArrayList<>();
    public Order(){

    }

    public Order(String id_order, String id_user, String name, String address, String phone, String email, String status_id, Double order_total, Date createAt) {
        this.id_order = id_order;
        this.id_user = id_user;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.status_id = status_id;
        this.order_total = order_total;
        this.createAt = createAt;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getStatus_id() {
        return status_id;
    }

    public void setStatus_id(String status_id) {
        this.status_id = status_id;
    }

    public Double getOrder_total() {
        return order_total;
    }

    public void setOrder_total(Double order_total) {
        this.order_total = order_total;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public List<OrderItem> getListOrderItems() {
        return ListOrderItems;
    }

    public void setListOrderItems(List<OrderItem> listOrderItems) {
        ListOrderItems = listOrderItems;
    }

    public String getVnTotalMoney(){
        Locale localeVN = new Locale("vi", "VN");
        NumberFormat vn = NumberFormat.getInstance(localeVN);
        return  vn.format(this.order_total);
    }

    public String getStatusOrder(){
        return OrderDao.getInstance().getStatusOrder(this.status_id);
    }

    @Override
    public String toString() {
        return "Order{" +
                "id_order='" + id_order + '\'' +
                ", id_user='" + id_user + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", status_id='" + status_id + '\'' +
                ", order_total=" + order_total +
                ", createAt=" + createAt +
                ", ListOrderItems=" + ListOrderItems +
                '}';
    }
}

