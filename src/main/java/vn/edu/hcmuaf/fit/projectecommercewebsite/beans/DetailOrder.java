package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.util.Date;

public class DetailOrder {
    private String product_id;
    private String product_name;
    private String product_des;
    private int product_price;
    private String discount_id;
    private String img_url;
    private int quantity;
    private Date createAt;

    public DetailOrder(String product_id, String product_name, String product_des, int product_price, String discount_id, String img_url, int quantity, Date createAt) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_des = product_des;
        this.product_price = product_price;
        this.discount_id = discount_id;
        this.img_url = img_url;
        this.quantity = quantity;
        this.createAt = createAt;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_des() {
        return product_des;
    }

    public void setProduct_des(String product_des) {
        this.product_des = product_des;
    }

    public int getProduct_price() {
        return product_price;
    }

    public void setProduct_price(int product_price) {
        this.product_price = product_price;
    }

    public String getDiscount_id() {
        return discount_id;
    }

    public void setDiscount_id(String discount_id) {
        this.discount_id = discount_id;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "DetailOrder{" +
                "product_id='" + product_id + '\'' +
                ", product_name='" + product_name + '\'' +
                ", product_des='" + product_des + '\'' +
                ", product_price=" + product_price +
                ", discount_id='" + discount_id + '\'' +
                ", img_url='" + img_url + '\'' +
                ", quantity=" + quantity +
                ", createAt=" + createAt +
                '}';
    }
}
