/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author GeorgyGeo
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import ulti.DBUlti;

public class ProdDao {

    private Connection connection;
    private String lastID;

    public ProdDao() {
        connection = DBUlti.getConnection();

        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select MAX(RowID) from products;");
            lastID = rs.getString("RowID");
        } catch (Exception e) {
        }

    }

    public void addProd(Product prod) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into products(RowID,OrderID,OrderDate,OrderPriority,OrderQuantity,Sales,UnitPrice,ShippingCost,CustomerName,Province,ProductCategory,ProductSubCategory,ProductName,ShipDate)"
                            + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,? )");
            // Parameters start with 1
            preparedStatement.setString(1, lastID);
            preparedStatement.setString(2, prod.getOrderID());
            preparedStatement.setString(3, prod.getOrderDate());
            preparedStatement.setString(4, prod.getOrderPrior());
            preparedStatement.setString(5, prod.getOrderQuan());
            preparedStatement.setString(6, prod.getSale());
            preparedStatement.setString(7, prod.getUnitPrice());
            preparedStatement.setString(8, prod.getShipCost());
            preparedStatement.setString(9, prod.getCusName());
            preparedStatement.setString(10, prod.getProvince());
            preparedStatement.setString(11, prod.getProdCat());
            preparedStatement.setString(12, prod.getSubProdCat());
            preparedStatement.setString(13, prod.getProdName());
            preparedStatement.setString(14, prod.getShipDate());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProd(String prodId) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from products where RowID=?");
            // Parameters start with 1
            preparedStatement.setString(1, prodId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateProd(Product prod) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update prods set OrderID=?,OrderDate=?,OrderPriority=?,OrderQuantity=?,Sales=?,UnitPrice=?,ShippingCost=?,CustomerName=?,Province=?,ProductCategory=?,ProductSubCategory=?,ProductName=?,ShipDate=?"
                            + "where RowID=?");
            // Parameters start with 1
            preparedStatement.setString(2, prod.getOrderID());
            preparedStatement.setString(3, prod.getOrderDate());
            preparedStatement.setString(4, prod.getOrderPrior());
            preparedStatement.setString(5, prod.getOrderQuan());
            preparedStatement.setString(6, prod.getSale());
            preparedStatement.setString(7, prod.getUnitPrice());
            preparedStatement.setString(8, prod.getShipCost());
            preparedStatement.setString(9, prod.getCusName());
            preparedStatement.setString(10, prod.getProvince());
            preparedStatement.setString(11, prod.getProdCat());
            preparedStatement.setString(12, prod.getSubProdCat());
            preparedStatement.setString(13, prod.getProdName());
            preparedStatement.setString(14, prod.getShipDate());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Product> getAllProds() {
        List<Product> prods = new ArrayList<Product>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from products");
            while (rs.next()) {
                Product prod = new Product();
                prod.setRowID(rs.getString("RowID"));
                prod.setOrderID(rs.getString("OrderID"));
                prod.setOrderDate(rs.getString("OrderDate"));
                prod.setOrderPrior(rs.getString("orderPrior"));
                prod.setOrderQuan(rs.getString("orderQuan"));
                prod.setSale(rs.getString("Sale"));
                prod.setUnitPrice(rs.getString("UnitPrice"));
                prod.setShipCost(rs.getString("shipCost"));
                prod.setCusName(rs.getString("cusName"));
                prod.setProvince(rs.getString("Province"));
                prod.setProdCat(rs.getString("prodCat"));
                prod.setSubProdCat(rs.getString("subProdCat"));
                prod.setProdName(rs.getString("prodName"));
                prod.setShipDate(rs.getString("ShipDate"));
                prod.setImg(rs.getString("Imgs"));
                prods.add(prod);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return prods;
    }

    public Product getProductById(String prodID) {
        Product prod = new Product();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from prods where RowID=?");
            preparedStatement.setString(1, prodID);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                prod.setRowID(rs.getString("RowID"));
                prod.setOrderID(rs.getString("OrderID"));
                prod.setOrderDate(rs.getString("OrderDate"));
                prod.setOrderPrior(rs.getString("OrderPriority"));
                prod.setOrderQuan(rs.getString("OrderQuantity"));
                prod.setSale(rs.getString("Sales"));
                prod.setUnitPrice(rs.getString("UnitPrice"));
                prod.setShipCost(rs.getString("ShippingCost"));
                prod.setCusName(rs.getString("CustomerName"));
                prod.setProvince(rs.getString("Province"));
                prod.setProdCat(rs.getString("ProductCategory"));
                prod.setSubProdCat(rs.getString("ProductSubCategory"));
                prod.setProdName(rs.getString("ProductName"));
                prod.setShipDate(rs.getString("ShipDate"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return prod;
    }
}
