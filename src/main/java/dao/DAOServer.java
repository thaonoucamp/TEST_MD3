package dao;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAOServer implements IDAO<Product> {
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    private final String INSERT_INTO_QUERY = "insert into product(`name`, price, quantity, color, description, category) values (?, ?, ?, ?, ?, ?);";
    private final String SHOW_ALL_QUERY = "SELECT * FROM product;";
    private final String FIND_NAME_QUERY = "select * from product where name like ?;";
    private final String UPDATE_QUERY = "UPDATE product SET name = ?,  price = ?, quantity = ?, color=?, description=?, category = ?, WHERE (id = ?);";
    private final String DELETE_QUERY = "DELETE FROM product WHERE (id = ?);";

    ConnecMySQL connecMySQL = new ConnecMySQL();


    @Override
    public List<Product> showAll() throws SQLException {
        List<Product> list = new ArrayList<>();

        connection = connecMySQL.getConnection();
        statement = connection.prepareStatement(SHOW_ALL_QUERY);
        resultSet = statement.executeQuery();

        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int category = resultSet.getInt("category");
            list.add(new Product(id, name, price, quantity, color, description, category));
        }

        return list;
    }

    @Override
    public List<Product> find(String name) throws SQLException {
        List<Product> list = new ArrayList<>();

        connection = connecMySQL.getConnection();
        statement = connection.prepareStatement(FIND_NAME_QUERY);
        statement.setString(1, name);
        resultSet = statement.executeQuery();

        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            double price = resultSet.getDouble("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String description = resultSet.getString("description");
            int category = resultSet.getInt("category");
            name = resultSet.getString("name");

            list.add(new Product(id, name, price, quantity, color, description, category));
        }

        return list;
    }

    @Override
    public void add(Product product) throws SQLException {
        connection = connecMySQL.getConnection();
        statement = connection.prepareStatement(INSERT_INTO_QUERY);

        statement.setString(1, product.getName());
        statement.setDouble(2, product.getPrice());
        statement.setInt(3, product.getQuantity());
        statement.setString(4, product.getColor());
        statement.setString(5, product.getDescription());
        statement.setInt(6, product.getCategory());

        statement.executeUpdate();
    }

    @Override
    public Product edit(int id) throws SQLException {
        Product product = new Product();

        connection = connecMySQL.getConnection();
        statement = connection.prepareStatement(UPDATE_QUERY);

        statement.setString(1, product.getName());
        statement.setDouble(2, product.getPrice());
        statement.setInt(3, product.getQuantity());
        statement.setString(4, product.getColor());
        statement.setString(5, product.getDescription());
        statement.setInt(6, product.getCategory());
        statement.setInt(7, id);


        statement.executeUpdate();

        return product;
    }

    @Override
    public void delete(int id) throws SQLException {
        connection = connecMySQL.getConnection();
        statement = connection.prepareStatement(DELETE_QUERY);
        statement.setInt(1, id);
        statement.executeUpdate();
    }
}
