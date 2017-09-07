<%-- 
    Document   : insertComment
    Created on : Aug 27, 2017, 5:01:34 PM
    Author     : AMAN MITTAL
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) {
                response.sendRedirect("../login.jsp");
                System.out.println("session not create");
            } else {

                int post = Integer.parseInt(request.getParameter("post"));
                String data = (String) request.getParameter("Tid");
                int sessionid = Integer.parseInt(session.getAttribute("id").toString());
                DateFormat dateformat = new SimpleDateFormat("yyyy/mm/dd hh:mm:ss");
                Date obj = new Date();
                String time = dateformat.format(obj);

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
                        String f = "insert into comment(postby,data,emaill,timer) values('" + post + "','" + data + "','" + sessionid + "','" + time + "')";
                        int x = st.executeUpdate(f);
                        if (x > 0) {
                            System.out.println("data inserted successfully");
                            status = "data Inserted";
                            response.sendRedirect("../read1.jsp?post=" + post);
                        } else {
                            status = "data not Inserted";

                        }
                    }
                } catch (Exception e) {
                    System.out.println("error in Insert" + e);
                }
            }
        %>
    </body>
</html>
