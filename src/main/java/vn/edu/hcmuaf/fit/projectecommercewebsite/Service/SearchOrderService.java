package vn.edu.hcmuaf.fit.projectecommercewebsite.Service;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.DetailOrder;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Order;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.OrderDetail;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.SearchOrderDao;

import java.util.ArrayList;

public class SearchOrderService {
    private static SearchOrderService instance;

    public SearchOrderService() {

    }

    public static SearchOrderService getInstance() {
        if (instance == null) {
            instance = new SearchOrderService();
        }
        return instance;
    }

    public ArrayList<Order> getOrderList(String phone) {
        return new SearchOrderDao().getOrderList(phone);
    }

    public ArrayList<DetailOrder> getProductByOrder(String id_order) {
        return new SearchOrderDao().getProductByOrder(id_order);

    }


    public static void main(String[] args) {
        ArrayList<Order> list = new SearchOrderService().getOrderList("01676967933");
        for (Order a : list) {
            System.out.println(a.toString());
        }
    }
}
