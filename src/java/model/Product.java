/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author GeorgyGeo
 */
public class Product {
    private String rowID;
    private String orderID;
    private String orderDate;
    private String orderPrior;
    private String orderQuan;
    private String sale;
    private String unitPrice;
    private String shipCost;
    private String cusName;
    private String province;
    private String prodCat;
    private String subProdCat;
    private String prodName;
    private String shipDate;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getRowID() {
        return rowID;
    }

    public void setRowID(String rowID) {
        this.rowID = rowID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderPrior() {
        return orderPrior;
    }

    public void setOrderPrior(String orderPrior) {
        this.orderPrior = orderPrior;
    }

    public String getOrderQuan() {
        return orderQuan;
    }

    public void setOrderQuan(String orderQuan) {
        this.orderQuan = orderQuan;
    }

    public String getSale() {
        return sale;
    }

    public void setSale(String sale) {
        this.sale = sale;
    }

    public String getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(String unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getShipCost() {
        return shipCost;
    }

    public void setShipCost(String shipCost) {
        this.shipCost = shipCost;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getProdCat() {
        return prodCat;
    }

    public void setProdCat(String prodCat) {
        this.prodCat = prodCat;
    }

    public String getSubProdCat() {
        return subProdCat;
    }

    public void setSubProdCat(String subProdCat) {
        this.subProdCat = subProdCat;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getShipDate() {
        return shipDate;
    }

    public void setShipDate(String shipDate) {
        this.shipDate = shipDate;
    }
    
    @Override
    public String toString() {
        return "product [prodID=" + rowID + ", name=" + prodName + ", price=" + unitPrice + ", quantity=" + orderQuan + "]";
    }
    
    
}
