/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author xuanh
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop4Flower() {
        String sql = "SELECT top 4 [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Where catalog_id = 1\n"
                + "  Order by sold DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllFlower() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Where catalog_id = 1\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop4Bouquet() {
        String sql = "SELECT top 4 [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where catalog_id = 2\n"
                + "  Order by  sold DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllBouquet() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Where catalog_id = 2\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop4Basket() {
        String sql = "SELECT top 4 [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where catalog_id = 3\n"
                + "  Order by sold DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllBasket() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Where catalog_id = 3\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop4Wedding() {
        String sql = "SELECT top 4 [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where catalog_id = 4\n"
                + "  Order by sold DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Product> getAllWedding() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Where catalog_id = 4\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public int count(String txtSearch) {
        try {
            String sql = "SELECT count(*)\n"
                    + "  FROM [dbo].[Product]\n"
                    + "  Where name like ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public Product getProductId(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]"
                + " where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Product(rs.getInt("id"), rs.getInt("catalog_id"), rs.getString("name"), rs.getInt("price"), rs.getInt("quantity"), rs.getString("description"),
                         rs.getInt("discount"), rs.getString("image_link"), rs.getDate("created"), rs.getInt("sold"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public int getTotalProduct() {
        String sql = "select count(*) from Product";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "Order by id\n"
                + "Offset ? ROW Fetch next 8 rows only;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 8);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("id"), rs.getInt("catalog_id"), rs.getString("name"), rs.getInt("price"), rs.getInt("quantity"), rs.getString("description"),
                         rs.getInt("discount"), rs.getString("image_link"), rs.getDate("created"), rs.getInt("sold")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getListByPage(List<Product> list, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Product> searchByName(String key) {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Where name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + key + "%");
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllOrderByAZ() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  ORDER BY [name] ASC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllOrderByZA() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]"
                + "  Order by name DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllOrderByPriceASC() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]"
                + "  Order by price ASC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllOrderByPriceDESC() {
        String sql = "SELECT [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]"
                + "  Order by price DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getTop3Sold() {
        String sql = "SELECT top 3 [id]\n"
                + "      ,[catalog_id]\n"
                + "      ,[name]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[discount]\n"
                + "      ,[image_link]\n"
                + "      ,[created]\n"
                + "      ,[sold]\n"
                + "  FROM [dbo].[Product]\n"
                + "  Order by sold DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCatalog_id(rs.getInt("catalog_id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setDescription(rs.getString("description"));
                p.setDiscount(rs.getInt("discount"));
                p.setImage_link(rs.getString("image_link"));
                p.setCreated(rs.getDate("created"));
                p.setSold(rs.getInt("sold"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        ProductDAO d = new ProductDAO();
        List<Product> list = d.getAll();
        System.out.println(list.get(0).getName());

    }
}
