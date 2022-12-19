package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.text.NumberFormat;
import java.util.Locale;

public class OrderItem {
    private String order_id;
    private ProductCart product;
    private double priceAt;
    int quantity;

    public OrderItem(String order_id, ProductCart product, double priceAt, int quantity) {
        this.order_id = order_id;
        this.product = product;
        this.priceAt = priceAt;
        this.quantity = quantity;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public ProductCart getProduct() {
        return product;
    }

    public void setProduct(ProductCart product) {
        this.product = product;
    }

    public double getPriceAt() {
        return priceAt;
    }

    public void setPriceAt(double priceAt) {
        this.priceAt = priceAt;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getMoney(){

        return  quantity*priceAt;
    }

    public String getVnMoney(){
        Locale localeVN = new Locale("vi", "VN");
        NumberFormat vn = NumberFormat.getInstance(localeVN);
        double money = quantity * priceAt;
        return  vn.format(money);
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "order_id='" + order_id + '\'' +
                ", product=" + product +
                ", priceAt=" + priceAt +
                ", quantity=" + quantity +
                '}';
    }
}
