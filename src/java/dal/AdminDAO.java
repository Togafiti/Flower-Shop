/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Product;

/**
 *
 * @author xuanh
 */
public class AdminDAO extends DBContext {

    public Product getProductById(int id) {
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
                + "  Where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product p = new Product(rs.getInt("id"), rs.getInt("catalog_id"), rs.getString("name"), rs.getInt("price"), rs.getInt("quantity"), rs.getString("description"),
                        rs.getInt("discount"), rs.getString("image_link"), rs.getDate("created"), rs.getInt("sold"));
                return p;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }

    }

    public void update(Product c) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [id] = ?\n"
                + "      ,[catalog_id] = ?\n"
                + "      ,[name] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[discount] = ?\n"
                + "      ,[image_link] = ?\n"
                + "      ,[created] = ?\n"
                + "      ,[sold] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getId());
            st.setInt(2, c.getCatalog_id());
            st.setString(3, c.getName());
            st.setInt(4, c.getPrice());
            st.setInt(5, c.getQuantity());
            st.setString(6, c.getDescription());
            st.setInt(7, c.getDiscount());
            st.setString(8, c.getImage_link());
            st.setDate(9, c.getCreated());
            st.setInt(10, c.getSold());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insert(Product p) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([id]\n"
                + "           ,[catalog_id]\n"
                + "           ,[name]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[description]\n"
                + "           ,[discount]\n"
                + "           ,[image_link]\n"
                + "           ,[created]\n"
                + "           ,[sold])"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getId());
            st.setInt(2, p.getCatalog_id());
            st.setString(3, p.getName());
            st.setInt(4, p.getPrice());
            st.setInt(5, p.getQuantity());
            st.setString(6, p.getDescription());
            st.setInt(7, p.getDiscount());
            st.setString(8, p.getImage_link());
            st.setDate(9, p.getCreated());
            st.setInt(10, p.getSold());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

}
