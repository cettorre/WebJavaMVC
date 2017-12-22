import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/JDBCServlet"})
public class JDBCServlet extends HttpServlet {

  public void doGet(HttpServletRequest inRequest,
      HttpServletResponse response) throws ServletException,
      IOException {
      
       response.setContentType("text/html;charset=UTF-8");

    PrintWriter out = null;
    Connection connection = null;
    Statement statement;
    ResultSet rs;

    try {
      Class.forName("com.mysql.jdbc.Driver");

      connection = DriverManager
          .getConnection("jdbc:mysql://sql11.freemysqlhosting.net:3306/sql11211878","sql11211878","FdGppclBl8");
      statement = connection.createStatement();

    
      out = response.getWriter();

      rs = statement.executeQuery("SELECT ID, NOMBREARTICULO, PRECIO FROM productos");

      out.println("<HTML><HEAD><TITLE>Products</TITLE></HEAD>");
      out.println("<BODY>");
      out.println("<UL>");

      while (rs.next()) {
        out.println("<LI>" + rs.getString("ID") + " "
            + rs.getString("NOMBREARTICULO") + " " + rs.getString("PRECIO"));
      }

      out.println("</UL>");
      out.println("</BODY></HTML>");
    } catch (ClassNotFoundException e) {
      out.println("Driver Error");
    } catch (SQLException e) {
      out.println("SQLException: " + e.getMessage());
    }
  }

  public void doPost(HttpServletRequest inRequest,
      HttpServletResponse outResponse) throws ServletException,
      IOException {
    doGet(inRequest, outResponse);
  }
}

           
       





