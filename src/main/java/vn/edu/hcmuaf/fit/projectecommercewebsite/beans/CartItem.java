package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.text.NumberFormat;
import java.util.Locale;

public class CartItem {
    private ProductCart product;


    private int amount_bought;

    public CartItem() {

    }

    public CartItem(ProductCart product, int amount_bought) {
        this.product = product;
        this.amount_bought = amount_bought;
    }

    public ProductCart getProduct() {
        return product;
    }

    public void setProduct(ProductCart product) {
        this.product = product;
    }

    public int getAmount_bought() {
        return amount_bought;
    }

    public void setAmount_bought(int amount_bought) {
        this.amount_bought = amount_bought;
    }

    public double getPrice(){


        return product.getProduct_price()*amount_bought;
    }

    public String getVnPrice(){
        Locale localeVN = new Locale("vi", "VN");
        NumberFormat vn = NumberFormat.getInstance(localeVN);
        double price = product.getProduct_price()*amount_bought;
        String result = vn.format(price);
        return result;
    }



    public void upOneQuantitySold(){
        this.amount_bought++;
    }

    public void upMoreQuantitySold(int num){
        this.amount_bought+=num;
    }
}
