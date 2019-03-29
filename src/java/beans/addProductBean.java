/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.File;

/**
 *
 * @author ASUS
 */
public class addProductBean {

    private int categoryId;
    private String productname;
    private int productPrice;
    private File productImg;
    private String productDes;

    public addProductBean(int categoryId, String productname, int productPrice, String productDes) {
        this.categoryId = categoryId;
        this.productname = productname;
        this.productPrice = productPrice;
        this.productDes = productDes;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public File getProductImg() {
        return productImg;
    }

    public void setProductImg(File productImg) {
        this.productImg = productImg;
    }

    public String getProductDes() {
        return productDes;
    }

    public void setProductDes(String productDes) {
        this.productDes = productDes;
    }

}
