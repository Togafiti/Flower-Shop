/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Users;

/**
 *
 * @author xuanh
 */
public class UserDAO extends DBContext {

    public List<Users> getAll() {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[created]\n"
                + "  FROM [dbo].[Users]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Users p = new Users();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setPhone(rs.getString("phone"));
                p.setUsername(rs.getString("username"));
                p.setPassword(rs.getString("password"));
                p.setCreated(rs.getDate("created"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Users getAccById(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[created]\n"
                + "  FROM [dbo].[Users]\n"
                + "  Where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            st.setInt(1, id);
            while (rs.next()) {
                Users p = new Users();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setPhone(rs.getString("phone"));
                p.setCreated(rs.getDate("created"));
                return p;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public boolean updateUsers(Users u) {
        boolean f = false;
        try {
            String sql = "UPDATE [dbo].[Users]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + " WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getName());
            st.setString(2, u.getEmail());
            st.setString(3, u.getPhone());
            st.setInt(7, u.getId());
            st.execute();
            f = true;
        } catch (Exception e) {
        }
        return f;
    }
}
