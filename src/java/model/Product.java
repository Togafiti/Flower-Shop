/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author xuanh
 */
public class Product {
    private int id;
    private int catalog_id;
    private String name;
    private int price;
    private int quantity;
    private String description;
    private int discount;
    private String image_link;
    private Date created;
    private int sold;

    public Product() {
    }

    public Product(int id, int catalog_id, String name, int price, int quantity, String description, int discount, String image_link, Date created, int sold) {
        this.id = id;
        this.catalog_id = catalog_id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.discount = discount;
        this.image_link = image_link;
        this.created = created;
        this.sold = sold;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCatalog_id() {
        return catalog_id;
    }

    public void setCatalog_id(int catalog_id) {
        this.catalog_id = catalog_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getImage_link() {
        return image_link;
    }

    public void setImage_link(String image_link) {
        this.image_link = image_link;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }
    
}
