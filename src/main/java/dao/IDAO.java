package dao;

import java.sql.SQLException;
import java.util.List;

public interface IDAO<T> {
    List<T> showAll() throws SQLException;

    List<T> find(String name) throws SQLException;

    void add(T t) throws SQLException;

    T edit(int id) throws SQLException;

    void delete(int id) throws SQLException;

}
