package vn.edu.hcmuaf.fit.projectecommercewebsite.beans;

import java.util.Date;

public class Category {
    private String id_category;
    private String name_category;
    private String id_parent;
    private Date create_category;

    public Category(String id_category, String name_category, String id_parent, Date create_category) {
        this.id_category = id_category;
        this.name_category = name_category;
        this.id_parent = id_parent;
        this.create_category = create_category;
    }

    public String getId_category() {
        return id_category;
    }

    public void setId_category(String id_category) {
        this.id_category = id_category;
    }

    public String getName_category() {
        return name_category;
    }

    public void setName_category(String name_category) {
        this.name_category = name_category;
    }

    public String getId_parent() {
        return id_parent;
    }

    public void setId_parent(String id_parent) {
        this.id_parent = id_parent;
    }

    public Date getCreate_category() {
        return create_category;
    }

    public void setCreate_category(Date create_category) {
        this.create_category = create_category;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id_category='" + id_category + '\'' +
                ", name_category='" + name_category + '\'' +
                ", id_parent='" + id_parent + '\'' +
                ", create_category=" + create_category +
                '}';
    }
}
