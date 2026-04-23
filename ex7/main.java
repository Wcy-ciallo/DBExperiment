package ex7;
import java.sql.*;
import java.net.URL;
import java.net.URLClassLoader;
import java.io.File;
import java.util.Properties;

public class main {
  public static void main(String[] args) {
    Connection c = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
      ClassLoader cl = new URLClassLoader(new URL[]{new File("sqlite-jdbc-3.7.2.jar").toURI().toURL()});
      Class clzz = Class.forName("org.sqlite.JDBC", true, cl);
      Driver d = (Driver) clzz.newInstance();
      DriverManager.registerDriver(d);
      c = d.connect("jdbc:sqlite:company.db", new Properties());

      c.setAutoCommit(false);

      stmt = c.createStatement();

      String updateSql = "UPDATE EMPLOYEE SET SALARY = SALARY - 5000 WHERE KPI = 'D'";
      stmt.executeUpdate(updateSql);

      c.commit();

      String selectSQL = "SELECT * FROM EMPLOYEE ORDER BY SALARY DESC";
      rs = stmt.executeQuery(selectSQL);

      while(rs.next()) {
        int id = rs.getInt("id");
        String name = rs.getString("NAME");
        int age = rs.getInt("AGE");
        double salary = rs.getDouble("SALARY");
        String kpi = rs.getString("KPI");

        System.out.println(id + "," + name + "," + age + "," + salary + "," + kpi);
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      try {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (c != null) c.close();
      } catch (SQLException se) {
        se.printStackTrace();
      }
    }
  }
}
