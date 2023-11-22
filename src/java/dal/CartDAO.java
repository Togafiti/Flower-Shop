/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Item;
import model.Order;
import model.Users;

/**
 *
 * @author xuanh
 */
public class CartDAO extends DBContext {

    public void addOrder(Users u, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        String status = "Received";
        try {
            String sql = "Insert into [Order] values (?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, u.getId());
            st.setInt(3, cart.getTotalMoney());
            st.setString(4, status);
            st.executeUpdate();

            String sql1 = "Select top 1 id from [Order] order by id DESC";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            if (rs.next()) {
                int oid = rs.getInt("id");
                for (Item i : cart.getItems()) {
                    String sql2 = "Insert into [OrderLine] values (?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setDouble(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }
            String sql3 = "Update product set quantity=quantity-?, sold = sold+? where id=?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getQuantity());
                st3.setInt(3, i.getProduct().getId());
                st3.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public List<Order> getAll() {
        String sql = "SELECT [id]\n"
                + "      ,[date]\n"
                + "      ,[cid]\n"
                + "      ,[totalmoney]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[Order]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List list = new ArrayList();
            while (rs.next()) {
                Order p = new Order();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getDate("date"));
                p.setCid(rs.getInt("cid"));
                p.setTotalmoney(rs.getInt("totalmoney"));
                p.setStatus(rs.getString("status"));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public int getTotalMoney() {
        String sql = "SELECT SUM(totalmoney) FROM [Order]\n"
                + "Where MONTH(date) = 7";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public Order getTop1Order() {
        String sql="Select top 1 * from [Order] order by totalmoney DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return new Order(rs.getInt("id"), rs.getDate("date"), rs.getInt("cid"), rs.getInt("totalmoney"), rs.getString("status"));
            }
        } catch (Exception e) {
        }
        return null;
    }
}
