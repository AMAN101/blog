<%-- 
    Document   : read1
    Created on : Aug 26, 2017, 2:40:16 PM
    Author     : AMAN MITTAL
--%>

<%@page import="folder1.comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="folder1.blog"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="nortin.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>
            NORTIN
        </title>
        <script>
          
              function check1(){
              var a=document.getElementById("text1").value;
              if(a=="" || a.length<10)
              {
                  alert('ENTER MINIMUM 10 CHAR');
                  return false;
              }
             
    }
        </script>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) {
                response.sendRedirect("login.jsp");
            } else {  %>
        <div id="main"><h1> <center>NORDIC</center></h1></div>
        <div id="main">
            <h3><center>BTemplates, the best place for Blogger Templates</center></h3></div>
        <div id="main-box">
            <div id="nav-bar">
                <a href="#">HOME</a>
                <a href="#">ABOUT</a>
                <a href="#">FACEBOOK</a>
                <a href="#">TWITTER</a>
                <a href="#">YOUTUBE</a>
                <a href="signout">LOGOUT</a>
            </div>
            <% ResultSet rs1, rs2;
                Connection con;
                Statement st;
                String q = "";
                ArrayList<comment> ar = null;
                String heading = "", time = "", post = "", postby = "";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql:///nordic", "root", "");
                    st = con.createStatement();
                    q = "SELECT * FROM post Join login ON (login.id=post.submitted) where post.id=" + request.getParameter("post") + "";
                    blog p = null;
                    rs1 = st.executeQuery(q);
                    if (rs1.next()) {
                        heading = rs1.getString(2);
                        time = rs1.getString(3);
                        post = rs1.getString(4);
                        postby = rs1.getString(7);
                        p = new blog(rs1.getInt(1), rs1.getString(2), rs1.getString(3), rs1.getString(4), rs1.getString(7), new ArrayList<comment>());
                    }
                    rs1.close();
                    q = "SELECT * FROM comment Join post ON (comment.postby=post.id) Join login ON (login.id=comment.emaill) where post.id=" + request.getParameter("post") + "";
                    rs2 = st.executeQuery(q);
                    ar = new ArrayList<comment>();
                    comment commet = null;
                    while (rs2.next()) {
                        int comnt = rs2.getInt(2);
                        String data = rs2.getString(3);
                        String email = rs2.getString(12);
                        String timer = rs2.getString(5);
                        commet = new comment(comnt, data, email, timer);
                        ar.add(commet);
                    }
                    p.setAl(ar);
                } catch (Exception e) {
                    e.printStackTrace();
                }%>
            <div id="box">
                <div id="heading">
                    <h2><%=heading%></h2>
                </div>
                <div>
                    <h4>Written by <%=postby%>  on  <%=time%>AM  in Blogger, Images, Tag  with 10 comments</h4>
                </div>
                <div>
                    <p><%=post%></p>
                </div>
                <div>
                    <div>
                        <p>Share:</p>
                    </div>

                </div>

                <!-- <div id="box">
                     <div id="Comments">
                         <h2><%=heading%></h2>
                     </div>
                     <div>
                         <h4>Written by <%=postby%>  on  <%=time%>AM  in Blogger, Images, Tag  with 10 comments</h4>
                     </div>
                     <div>
                         <p><%=post%></p>
                     </div>
                     <div>
                         <div>
                             <p>Share:</p>
                         </div>
     
                     </div>
                 </div> 
                <% ArrayList<blog> ob = (ArrayList<blog>) request.getAttribute("blog"); %>
                -->



                <%  int x=0;
                    for (comment item : ar) {
                      x++;      
                 %>

                <div id="heading">
                    <h3><%=item.getData()%></h3>
                </div>

                <div>
                    <h5>Comment by <%=item.getEmail()%>  on  <%=item.getTime()%></h5>
                </div>


                <% }%>
            </div>
            <div id="box">
                <div>
                    <p><%=x%> comments:</p>
                </div>
                <div>
                    <p>POST A COMMENT</p>
                </div>
                <div>
                    <form action="Process/insertComment.jsp" onsubmit="return check1()">
                    <textarea id="text1" name="Tid" rows="4" cols="132"></textarea>
                    <input type="hidden" name="post" value="<%=request.getParameter("post")%>"/>
                </div>
                <div>
                    <input type="submit" class="btn btn-primary right" value="submit"/>
                </form>
                </div>
            </div>
        </div>
        <%  }  %>  
    </body>
</html>