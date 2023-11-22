/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Users;

/**
 *
 * @author xuanh
 */
public class DAO extends DBContext {

//    public Admin checkAccountAdmin(String username, String password) {
//        String sql = "SELECT [id]\n"
//                + "      ,[username]\n"
//                + "      ,[password]\n"
//                + "      ,[name]\n"
//                + "  FROM [dbo].[Admin] where username=? and password=?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, username);
//            st.setString(2, password);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                return new Admin(rs.getInt("id"), username, password, rs.getString("name"));
//            }
//        } catch (SQLException e) {
//        }
//        return null;
//    }

    public Users checkAccount(String username, String password) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[created]\n"
                + "  FROM [dbo].[Users]\n"
                + "  where username = ? and password= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Users(rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), username, password, rs.getDate("created"));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public Users getUserUsername(String username) {
        String sql = "SELECT [name]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[created]\n"
                + "  FROM [dbo].[Users]"
                + " where username = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Users u = new Users();
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setPhone(rs.getString("phone"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setCreated(rs.getDate("created"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
     public Users getUserPassword(String password) {
        String sql = "SELECT [name]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[created]\n"
                + "  FROM [dbo].[Users]"
                + " where password = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Users u = new Users();
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setPhone(rs.getString("phone"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setCreated(rs.getDate("created"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(Users u) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([name]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[username]\n"
                + "           ,[password]\n"
                + "           ,[created])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getName());
            st.setString(2, u.getEmail());
            st.setString(3, u.getPhone());
            st.setString(4, u.getUsername());
            st.setString(5, u.getPassword());
            st.setDate(6, u.getCreated());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updatePass(Users u) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [password] =? \n"
                + " WHERE username = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getPassword());
            st.setString(2, u.getUsername());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
}
