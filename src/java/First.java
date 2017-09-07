
import folder1.blog;
import folder1.comment;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;

public class First extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ResultSet rs1,rs2;
        Connection con;
        Statement st;
        String q="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql:///nordic", "root", "");
            st = con.createStatement();
            q = "SELECT * FROM post Join login ON (login.id=post.submitted)  order by  post.id desc ";

            rs1 = st.executeQuery(q);
                ArrayList<blog> ar = new ArrayList<blog>();
                blog p = null;
            while (rs1.next()) {
                p = new blog(rs1.getInt(1),rs1.getString(2),rs1.getString(3),rs1.getString(4),rs1.getString(7));
                ar.add(p);
                System.out.println(rs1.getInt(5));
            }
            request.setAttribute("blog", ar);
            RequestDispatcher rd = request.getRequestDispatcher("nortin.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
