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

    private String iduser = null;

    Locale localeVN = new Locale("vi", "VN");
    NumberFormat vn = NumberFormat.getInstance(localeVN);

    public Cart() {
        this.listItems = new HashMap<>();
    }

    public Cart(String iduser,Cart cartSession) {
        Map<String, CartItem> listCartSession = cartSession.getListItems();
        Map<String,CartItem> cartItemsInDataBase = CartDao.getInstance().getCart(iduser);
        for (CartItem item: listCartSession.values()) {
            String key = item.getProduct().getProduct_id();
            if(cartItemsInDataBase.containsKey(key)){
                int num = item.getAmount_bought();
                cartItemsInDataBase.get(key).upMoreQuantitySold(num);
                CartDao.getInstance().updateQuantityCartItem(iduser,key,cartItemsInDataBase.get(key).getAmount_bought());
            }
            else {
                cartItemsInDataBase.put(key,item);
                CartDao.getInstance().insertCartItem(iduser,key,1);
            }

        }
        this.listItems = cartItemsInDataBase;
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
            if (this.iduser != null) {
                int newQuatity = listItems.get(key).getAmount_bought();
                CartDao.getInstance().updateQuantityCartItem(this.iduser, key, newQuatity);
            }
        } else {
            listItems.put(key,new CartItem(product,1));
            if (this.iduser != null){
                CartDao.getInstance().insertCartItem(this.iduser,key,1);
            }
        }

    }

    public void puts(ProductCart product,int num) {
        String key = product.getProduct_id();

        if (listItems.containsKey(key)) {
            listItems.get(key).upMoreQuantitySold(num);
            if (this.iduser != null) {
                int newQuatity = listItems.get(key).getAmount_bought();
                CartDao.getInstance().updateQuantityCartItem(this.iduser, key, newQuatity);
            }
        } else {
            listItems.put(key,new CartItem(product,num));
            if (this.iduser != null){
                CartDao.getInstance().insertCartItem(this.iduser,key,num);
            }
        }
    }

    public void updateNumProductInCart(String product_id,int num) {

            listItems.get(product_id).setAmount_bought(num);
            if (this.iduser != null) {

                CartDao.getInstance().updateQuantityCartItem(this.iduser, product_id, num);
            }



    }






    public CartItem getCartItem(String id) {
        return listItems.get(id);
    }

    public CartItem remove(String product_id){
        if (this.iduser != null){
            CartDao.getInstance().removeProductCart(this.iduser,product_id);

        }
        return  listItems.remove(product_id);


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

    public void emtyCart(String iduser){
        this.listItems.clear();
        CartDao.getInstance().removeAllCart(iduser);
    }


//    public static void main(String[] args) {
//        System.out.println(getInstance().getFinalMoneyCart());
//    }


}
