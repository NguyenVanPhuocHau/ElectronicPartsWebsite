package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;


import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.CartDao;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    private static  final  long serialVersionUID = 1L;
    private final Map<String,Product> productList;

    private double feeShip;

    private double feePromotion;

    private String iduser;

    public Cart() {
        this.productList = new HashMap<>();
    }

    public Cart(String iduser){
        this.productList = CartDao.getInstance().getCart(iduser);
        this.iduser = iduser;

    }

    public Cart(Cart cart){
        this.productList = cart.getCart();
    }

    public static  Cart getInstance(){
        return new Cart();
    }



    public void  put(Product product){
//        String key = product.getId_product()+product.getSize()+product.getColor();
        String key = "";
        if (productList.containsKey(key)){
//            productList.get(key).upOneQuantitySold();
//            CartDao.getInstance().updatecart(this.iduser,product.getId_product(),product.getColor(),product.getSize(),productList.get(key).getQuantitySold());
        }
        else {
//            productList.put(key,product);
//            productList.get(key).upOneQuantitySold();
//            CartDao.getInstance().insertCart(this.iduser,product.getId_product(),product.getColor(),product.getSize(),1);
        }


    }

    public Map<String,Product> getCart(){
        return this.productList;
    }



    public Product getProduct(String id){
        return productList.get(id);
    }

//    public Product remove(String id){
//        CartDao.getInstance().romvecart(this.iduser,productList.get(id).getId_product(),productList.get(id).getColor(),productList.get(id).getSize());
//        return  productList.remove(id);


//    }

    public double getTotalMoneyCart(){
        double totalPirce = 0;
        for (Product product: productList.values()){
//            totalPirce += product.totalPriceSold();
        }
        return totalPirce;
    }

    public double getFinalMoneyCart(){
        return getTotalMoneyCart() + getFeeShip() - (((getTotalMoneyCart()+getFeeShip())*getFeePromotion())/100);
    }

    public int getNumberProductInCart(){
        int result = 0;
        for (Product product: productList.values()){
//            result += product.getQuantitySold();
        }
        return result;
    }

    public Collection<Product> getProductList(){
        return  productList.values();
    }

    public double getFeeShip(){
        if (getTotalMoneyCart()>=2000000){
            return 0;
        }
        else {
            return 22000*getNumberProductInCart();
        }

    }

    public int getFeePromotion(){
        if (getNumberProductInCart()>=3){
           return getNumberProductInCart()/3;
        }
        else {
            return 0;

        }

    }
//    public void checkOut(){
//        CartDao.getInstance().romveAllcart(this.iduser);
//    }



//    public static void main(String[] args) {
//        System.out.println(getInstance().getFinalMoneyCart());
//    }





}
