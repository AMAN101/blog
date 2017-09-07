<%-- 
    Document   : login
    Created on : Aug 26, 2017, 8:50:55 PM
    Author     : AMAN MITTAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
          function check(){
              var a=document.getElementById("email").value;
               var b=document.getElementById("pass").value;
              if(a=="" || b=="")
              {
                  alert('ALL FEILD ARE REQUIRED');
                  return false;
              }
    }
    </script>
    </head>
    <body>
         <%
            String id = (String) session.getAttribute("id");
            if (id != null) {
                response.sendRedirect("First");
            } else {  %>
        <h1>Login</h1>
        
      <form action="Process/validate.jsp" onsubmit="return check()">
      <h2>Email</h2>
      <input type="text" placeholder="Enter Email" name="email" id="email2"/>
      <h2>Password</h2>
      <input type="text" placeholder="Enter Password" name="pass" id="pass1"/>
      <input type="submit" name="sub" value="Login"/>
      </form>
        <a href="signup.jsp">Signup</a>
        <% if(request.getParameter("msg")!=null)
        out.println(request.getParameter("msg"));
         %>
         <%  }  %>  
    </body>
</html>
