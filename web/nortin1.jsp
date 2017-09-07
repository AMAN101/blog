<%-- 
    Document   : nortin1
    Created on : Aug 27, 2017, 8:56:39 AM
    Author     : AMAN MITTAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About</title>
        <link rel="stylesheet" type="text/css" href="nortin.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) {
                response.sendRedirect("login.jsp");
                System.out.println("session not create");
            } else {  %>


        <h1><center>NORDIC</center></h1>
        <h3><center>BTemplates, the best place for Blogger Templates</center></h3>
        <div id="main-box1">
            <div id="nav">
                <a  href="#">HOME</a>
                <a href="#">ABOUT</a>
                <a href="#">FACEBOOK</a>
                <a  href="#">TWITTER</a>
                <a href="#">YOUTUBE</a>
                <a href="signout">LOGOUT</a>
            </div>
            <!--<div id="box1">
                <div>
                    <h3>ABOUT</h3>
                </div>
                <div>
                    <p><span>Nordic</span> is the template number 4667 in BTemplates, where a total of 51 499 782 templates has been downloaded so far since 2008. This template was created by NBThemes and is the 112th template published in BTemplates.com by this author.</p>
                </div>
                <div>
                    <p>Download this and more Blogger Templates at</p>
                </div>
                <div>
                    <dl>
                        <dt>� A normal paragraph</dt>
                        <dd>Et posse meliore definitiones (strong) his, vim tritani vulputate (italic) pertinacia at. Augue quaerendum (Acronym) te sea, ex sed sint invenire erroribus. Cu vel ceteros scripserit, te usu modus fabellas mediocritatem. In legere regione instructior eos. Ea repudiandae suscipiantur vim, vel partem labores ponderum in blogger templates.(link)</dd>
                        <dt>� A normal paragraph</dt>
                        <dd>Et posse meliore definitiones (strong) his, vim tritani vulputate (italic) pertinacia at. Augue quaerendum (Acronym) te sea, ex sed sint invenire erroribus. Cu vel ceteros scripserit, te usu modus fabellas mediocritatem. In legere regione instructior eos. Ea repudiandae suscipiantur vim, vel partem labores ponderum in blogger templates.(link)</dd>
                        <dt>� A normal paragraph</dt>
                    </dl>
                </div>
            </div>  -->
            <div id="box1">
                <div>
                    <p>comments:</p>
                </div>
                <div>
                    <p>TITLE</p>
                </div>
                <div>
                    <form action="Process/insertPost.jsp">
                        <textarea name="Tid1" rows="1" cols="136"></textarea>
                </div>
                <div>
                    <p>POST A COMMENT</p>
                </div>
                <div>
                    <textarea name="Tid2" rows="5" cols="136"></textarea>
                </div>
                <div>
                    <input type="submit" class="btn btn-primary right" value="submit"/>
                    </form>
                </div>
            </div>
        </div>
        <%  }%>
    </body>
</html>