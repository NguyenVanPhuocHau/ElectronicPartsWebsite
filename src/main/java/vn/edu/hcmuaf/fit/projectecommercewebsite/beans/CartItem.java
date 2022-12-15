package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

public class CartItem {
    private String user_id;
    private String product_id;

    private int amount_bought;

    public CartItem(){

    }

    public CartItem(String user_id, String product_id, int amount_bought) {
        this.user_id = user_id;
        this.product_id = product_id;
        this.amount_bought = amount_bought;

    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public int getAmount_bought() {
        return amount_bought;
    }

    public void setAmount_bought(int amount_bought) {
        this.amount_bought = amount_bought;
    }
}
