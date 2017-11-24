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
import java.io.Console;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.User;
import ulti.DBUlti;

public class UserDao {

    private Connection connection;
    private String lastID;

    public UserDao() {
        connection = DBUlti.getConnection();

//        get the last id for increasement
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select MAX(id) from users");
            if (rs.next()) {
                lastID = rs.getString("MAX(id)");
                System.out.println(lastID);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void addUser(User user) {
        try {

            int id = Integer.parseInt(lastID) + 1;
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into users(id,name,email,type) values (?, ?, ?, ? )");
            // Parameters start with 1
            preparedStatement.setString(1, String.valueOf(id));
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getType());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(String userId) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from users where id=?");
            // Parameters start with 1
            preparedStatement.setString(1, userId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update users set name=?, email=?, type=?, id=?"
                            + "where id=?");
            // Parameters start with 1
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getType());
            preparedStatement.setString(4, user.getId());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from users");
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getString("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setType(rs.getString("type"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public User getUserById(String userId) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from users where userid=?");
            preparedStatement.setString(1, userId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setId(rs.getString("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setType(rs.getString("type"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
