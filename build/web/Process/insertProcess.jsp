<%-- 
    Document   : insertProcess
    Created on : Aug 26, 2017, 4:34:59 PM
    Author     : AMAN MITTAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String status = "null";
            Connection con;
            Statement st;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql:///nordic", "root", "");
                st = con.createStatement();
                String q = "select * from login where email='" + request.getParameter("email") + "'";
                // String q="select * from user where uname='"+ob.getUname()+"'or email='"+ob.getEmail()+"'";
                // logic gate Or work for both
                ResultSet rs = st.executeQuery(q);

                if (rs.next()) {
                    System.out.println("username or email exist");
                    status = "username or email exist";
                } else {
                    String f = "insert into login(email,password) values('" + request.getParameter("email") + "','" + request.getParameter("pass") + "')";
                    int x = st.executeUpdate(f);
                    if (x > 0) {
                        System.out.println("data inserted successfully");
                        status = "data Inserted";
                        response.sendRedirect("../login.jsp");
                    } else {
                        status = "data not Inserted";
                    
                    }
                }
            } catch (Exception e) {
                System.out.println("error in Insert" + e);
            }
        %>
    </body>
</html>
