package vn.edu.hcmuaf.fit.projectecommercewebsite.Service;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Category;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.CategoryDao;

import java.util.ArrayList;

public class CategoryService {
    private static CategoryService instance;
    public CategoryService(){

    }
    public static CategoryService getInstance(){
        if(instance==null){
            instance=new CategoryService();
        }
        return instance;
    }
    public ArrayList<Category> getParent(){
        return new CategoryDao().getCategoryParent();
    }
    public ArrayList<Category> getCategory(String id_parent){
        return new CategoryDao().getCategory(id_parent);
    }
}
