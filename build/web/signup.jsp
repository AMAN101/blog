<%-- 
    Document   : signup
    Created on : Aug 26, 2017, 4:01:23 PM
    Author     : AMAN MITTAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
          
              function check1(){
          
            // var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
             var re1=/^[0-9a-zA-Z]+@[0-9a-zA-Z]+\.[0-9a-zA-Z]{2,}$/;
              var a=document.getElementById("uname").value;
              var b=document.getElementById("email2").value;
              var c=document.getElementById("gender").value;
              var d=document.getElementById("address").value;
              var e=document.getElementById("pass1").value;
              var f=document.getElementById("city").value;
              if(a=="" || b=="" || c=="" || d=="" || e=="" || f=="")
              {
                  alert(' ALL ARE REQUIRED');
                  return false;
              }
           //   alert(b);
            //   alert(re1);
              if(!re1.test(b))
              {
                  alert('EMAIL NOT VALID REQUIRED');
                  return false;
              }
             
              if(c!="MALE" && c!="FEMALE")
              {
                  alert('ACCEPT MALE/FEMALE IN CAPITAL');
                  alert(c);
                  return false;
              }
             
    }
        </script>
    </head>
    <body>
       <h1>Registration</h1>
      <form action="Process/insertProcess.jsp" onsubmit="return check1()">
      <h2>Email</h2>
      <input type="text" placeholder="Enter Email" name="email" id="email2"/>
      <h2>User Name</h2>
      <input type="text" placeholder="Enter User Name" name="uname" id="uname"/>
      <h2>Gender</h2>
      <input type="text" placeholder="Enter Gender" name="gender" id="gender"/>
      <h2>Address</h2>
      <input type="text" placeholder="Enter Address" id="address"/>
      <h2>Password</h2>
      <input type="text" placeholder="Enter Password" name="pass" id="pass1"/>
      <h2>City</h2>
      <input type="text" placeholder="Enter City" name="city" id="city"/>
      <input type="submit" name="sub" value="Register"/>
      </form>
       <a href="login.jsp">Login</a>
    </body>
</html>
