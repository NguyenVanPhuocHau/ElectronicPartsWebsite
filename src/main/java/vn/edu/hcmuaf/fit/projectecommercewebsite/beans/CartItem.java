package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

public class CartItem {
    private Product product;


    private int amount_bought;

    public CartItem() {

    }

    public CartItem(Product product, int amount_bought) {
        this.product = product;
        this.amount_bought = amount_bought;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
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



    public void upOneQuantitySold(){
        this.amount_bought++;
    }

    public void upMoreQuantitySold(int num){
        this.amount_bought+=num;
    }
}
