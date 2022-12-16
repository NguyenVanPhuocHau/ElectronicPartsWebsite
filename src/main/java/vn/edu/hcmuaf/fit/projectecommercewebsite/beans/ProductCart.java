package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductCart {
    private String product_id;
    private String product_name;
    private String product_des;
    private double product_price;
    private String iventory_id;
    private String catetory_id;
    private String discount_id;
    private List<String> img_url;
    private Date createAt;

    public ProductCart(String product_id, String product_name, String product_des, double product_price, String iventory_id, String catetory_id, String discount_id, List<String> img_url, Date createAt) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_des = product_des;
        this.product_price = product_price;
        this.iventory_id = iventory_id;
        this.catetory_id = catetory_id;
        this.discount_id = discount_id;
        this.img_url = img_url;
        this.createAt = createAt;
    }

    public String getDiscount_id() {
        return discount_id;
    }

    public void setDiscount_id(String discount_id) {
        this.discount_id = discount_id;
    }

    public List<String> getImg_url() {
        return img_url;
    }

    public void setImg_url(List<String> img_url) {
        this.img_url = img_url;
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

    public double getProduct_price() {
        return product_price;
    }

    public void setProduct_price(int product_price) {
        this.product_price = product_price;
    }

    public String getIventory_id() {
        return iventory_id;
    }

    public void setIventory_id(String iventory_id) {
        this.iventory_id = iventory_id;
    }

    public String getCatetory_id() {
        return catetory_id;
    }

    public void setCatetory_id(String catetory_id) {
        this.catetory_id = catetory_id;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id='" + product_id + '\'' +
                ", product_name='" + product_name + '\'' +
                ", product_des='" + product_des + '\'' +
                ", product_price=" + product_price +
                ", iventory_id='" + iventory_id + '\'' +
                ", catetory_id='" + catetory_id + '\'' +
                ", discount_id='" + discount_id + '\'' +
                ", image='" + img_url.toString() + '\'' +
                ", createAt=" + createAt.toString() +
                '}';
    }
}
