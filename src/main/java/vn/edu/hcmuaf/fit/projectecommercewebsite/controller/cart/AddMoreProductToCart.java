package vn.edu.hcmuaf.fit.projectecommercewebsite.controller.cart;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Cart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.ProductCart;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddMoreProductToCart", value = "/AddMoreProductToCart")
public class AddMoreProductToCart  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String product_id = request.getParameter("product_id");
        int num = Integer.parseInt(request.getParameter("quantity"));
        ProductCart product = ProductDao.getInstance().getProductById(product_id);
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart ==null) {
            cart = Cart.getInstance();

        }
        cart.puts(product,num);
        session.setAttribute("cart", cart);
//        request.getRequestDispatcher("cart.jsp").forward(request,response);
        PrintWriter out = response.getWriter();
        out.println("["+cart.getNumberProductInCart()+"] sản phẩm trong giỏ hàng");
    }
}
