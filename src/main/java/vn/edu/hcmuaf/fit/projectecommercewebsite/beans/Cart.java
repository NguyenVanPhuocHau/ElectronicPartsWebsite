package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;


import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.CartDao;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class Cart implements Serializable {
    private static final long serialVersionUID = 1L;
    private final Map<String, CartItem> listItems;

    private double feeShip;

    private double feePromotion;

    private String iduser;

    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vn = NumberFormat.getInstance(localeVN);

    public Cart() {
        this.listItems = new HashMap<>();
    }

    public Cart(String iduser) {
        this.listItems = CartDao.getInstance().getCart(iduser);
        this.iduser = iduser;

    }

    public Cart(Cart cart) {
        this.listItems = cart.getListItems();
        this.iduser = cart.getIduser();

    }

    public static Cart getInstance() {
        return new Cart();
    }


    public void put(ProductCart product) {
        String key = product.getProduct_id();

        if (listItems.containsKey(key)) {
            listItems.get(key).upOneQuantitySold();
//            CartDao.getInstance().updatecart(this.iduser,product.getId_product(),product.getColor(),product.getSize(),productList.get(key).getQuantitySold());
        } else {
            listItems.put(key,new CartItem(product,1));
//            listItems.get(key).upOneQuantitySold();
//            CartDao.getInstance().insertCart(this.iduser,product.getId_product(),product.getColor(),product.getSize(),1);
        }

    }

    public void puts(ProductCart product,int num) {
        String key = product.getProduct_id();

        if (listItems.containsKey(key)) {
            listItems.get(key).upMoreQuantitySold(num);
//            CartDao.getInstance().updatecart(this.iduser,product.getId_product(),product.getColor(),product.getSize(),productList.get(key).getQuantitySold());
        } else {
            listItems.put(key, new CartItem(product, num));
//            CartDao.getInstance().insertCart(this.iduser,product.getId_product(),product.getColor(),product.getSize(),1);
        }
    }




    public CartItem getCartItem(String id) {
        return listItems.get(id);
    }

    public CartItem remove(String id){
//        CartDao.getInstance().romvecart(this.iduser,productList.get(id).getId_product(),productList.get(id).getColor(),productList.get(id).getSize());
        return  listItems.remove(id);


    }

    public double getTotalMoneyCart() {
        double totalPirce = 0;
        for (CartItem item : listItems.values()) {
           totalPirce += item.getPrice();
        }
        return totalPirce;
    }

    public double getFinalMoneyCart() {
        return getTotalMoneyCart() + getFeeShip() - (((getTotalMoneyCart() + getFeeShip()) * getFeePromotion()) / 100);
    }

    public int getNumberProductInCart() {
        int result = 0;
        for (CartItem item : listItems.values()) {
           result += item.getAmount_bought();
        }
        return result;
    }

    public Collection<CartItem> getListCartItems() {
        return listItems.values();
    }

    public double getFeeShip() {
        if (getTotalMoneyCart() >= 2000000) {
            return 0;
        } else {
            return 22000 * getNumberProductInCart();
        }

    }

    public int getFeePromotion() {
        if (getNumberProductInCart() >= 3) {
            return getNumberProductInCart() / 3;
        } else {
            return 0;

        }
    }

    public String getVnTotalMoneyCart(){
        return  vn.format(getTotalMoneyCart());
    }

    public String getVnFinalMoneyCart(){
        return vn.format(getFinalMoneyCart());
    }

    public String getVnFeePromotion(){
        return vn.format(getFeePromotion());
    }

    public String getVnFeeShip(){
        return vn.format(getFeeShip());
    }


//    public void checkOut(){
//        CartDao.getInstance().romveAllcart(this.iduser);
//    }

    public Map<String, CartItem> getListItems() {
        return listItems;
    }

    public void setFeeShip(double feeShip) {
        this.feeShip = feeShip;
    }

    public void setFeePromotion(double feePromotion) {
        this.feePromotion = feePromotion;
    }

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }


//    public static void main(String[] args) {
//        System.out.println(getInstance().getFinalMoneyCart());
//    }


}
