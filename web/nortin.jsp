<%-- 
    Document   : nortin
    Created on : Aug 24, 2017, 10:42:27 PM
    Author     : AMAN MITTAL
--%>

<%@page import="folder1.blog"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    <link rel="stylesheet" type="text/css" href="nortin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>
        NORTIN
    </title>
</head>
     
       
<div id="main"><h1> <center>NORDIC</center></h1></div>
<div id="main">
    <h3><center> BTemplates, the best place for Blogger Templates</center></h3></div>
<div id="main-box">
    <div id="nav-bar">
        <a href="#">HOME</a>
        <a href="nortin1.html">ABOUT</a>
        <a href="#">FACEBOOK</a>
        <a href="#">TWITTER</a>
        <a href="#">YOUTUBE</a>
        <a href="nortin1.jsp">POSTCOMMENT</a>
        <% if(session.getAttribute("id") != null) { %>
          <a href="signout">LOGOUT</a>
          <% } %>
    </div>

    <% ArrayList<blog> ob = (ArrayList<blog>) request.getAttribute("blog"); %>

    <% for (blog item : ob) {%>
    <div id="box">
        <div id="heading">
            <h2><%=item.getHeading()%></h2>
        </div>

        <div>
            <h4>Written by <%=item.getSubmittedby()%>  on  <%=item.getTime()%>AM  in Blogger, Images, Tag  with 10 comments</h4>
        </div>
        <div>
            <% String str = item.getPost();
                if (str.length() > 297) {
                    str = str.substring(0, 296);
                }
            %>
            <p><%=str%></p>
        </div>
        <div>
            <div>
                <p>Share:</p>
            </div>
            
            <div class="right">
                <a href="read1.jsp?post=<%=item.getId()%>">Read More</a>
            </div>
           
        </div>
    </div>
            <% }%>
</div>


<!-- about page is under below -->





