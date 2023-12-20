/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE171357";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category_HE171357";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public List<Product> getProductByCateId(String cateId) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE171357\n"
                + "where cateID = ? ";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cateId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE171357\n"
                + "where sell_ID = ?";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select *from product_HE171357 "
                + "where nameProduct like CONCAT('%',?,'%')";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, txtSearch);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public Product getProductById(String id) {
        String query = "select * from product_HE171357 "
                + "where ProductID = ? ";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account login(String username, String password) {
        String query = "select * from Account_HE171357 "
                + "where username = ? "
                + "and [password] = ? ";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        String query = "select * from Account_HE171357 where username = ?";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String username, String password) {
        String query = "insert into Account_HE171357 "
                + "values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void deleteProduct(String ProductID) {
        String query = "delete from product_HE171357\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, ProductID);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void insertProduct(String nameProduct, String imageProduct, String priceProduct, String titleProduct, String descriptionProduct, String category, int sid) {
        String query = "INSERT [dbo].[product_HE171357]\n"
                + "([nameProduct], [imageProduct], [priceProduct], [titleProduct], [descriptionProduct], [cateID], [sell_ID]) \n"
                + "VALUES (?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, nameProduct);
            ps.setString(2, imageProduct);
            ps.setString(3, priceProduct);
            ps.setString(4, titleProduct);
            ps.setString(5, descriptionProduct);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String nameProduct, String imageProduct, String priceProduct, String titleProduct, String descriptionProduct, String category, String ProductID) {
        String query = "update [product_HE171357]\n"
                + "set nameProduct = ?,\n"
                + "imageProduct = ?,\n"
                + "priceProduct = ?,\n"
                + "titleProduct = ?,\n"
                + "descriptionProduct = ?,\n"
                + "cateID = ?\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection(); // mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, nameProduct);
            ps.setString(2, imageProduct);
            ps.setString(3, priceProduct);
            ps.setString(4, titleProduct);
            ps.setString(5, descriptionProduct);
            ps.setString(6, category);
            ps.setString(7, ProductID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();

        for (Category o : listC) {
            System.out.println(o);
        }
        dao.deleteProduct("4");
    }
}
