<%-- 
    Document   : validate
    Created on : Aug 26, 2017, 9:04:58 PM
    Author     : AMAN MITTAL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
                String q = "select * from login where email='" + request.getParameter("email") + "' AND password='" + request.getParameter("pass") + "'";
                // String q = "select * from login where email='" + request.getParameter("email") + "'";
                // String q="select * from user where uname='"+ob.getUname()+"'or email='"+ob.getEmail()+"'";
                // logic gate Or work for both
                ResultSet rs = st.executeQuery(q);

                if (rs.next()) {
                    System.out.println("username or email exist");
                    status = "username or email exist";
                    session.setAttribute("id",rs.getInt(1));
                    //session.setAttribute("email", request.getParameter("email"));
                    System.out.println("validate ok");
                    response.sendRedirect("../First");
                } else {
                    response.sendRedirect("../login.jsp?msg=notvalid");
                }
            } catch (Exception e) {
                System.out.println("error in login" + e);
                response.sendRedirect("../login.jsp?msg=error");
            }
        %>
    </body>
</html>
