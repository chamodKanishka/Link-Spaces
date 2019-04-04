package db;

import java.sql.*;
import com.mysql.cj.jdbc.Driver;

public class Dbcon {
    public Connection connect(String conn) {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(conn, "root", "tj1997");
        } catch (SQLException e) {
            System.out.println(e);
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

}
