<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>

<head>
  <link rel="stylesheet" href="register_styles.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Sign in</title>
</head>

<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
          <!-- Tabs Titles -->
          <h2 class="inactive underlineHover"> <a href="login.jsp">Sign In</a> </h2>
          <h2 class="active">Sign Up </h2>
      
          <!-- Icon -->
          <div class="fadeIn first">
            <img src="images/commerce.png" id="icon" alt="User Icon" />
          </div>
      
          <!-- Login Form -->
          <form action="register" method="post">
            <input type="text" id="name" class="fadeIn first" name="name" placeholder="name">
            <input type="text" id="login" class="fadeIn second" name="email" placeholder="email">
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="submit" class="fadeIn fourth" value="Sign Up">
          </form>
          
          <%
    if(request.getAttribute("RegisterResult") != null && request.getAttribute("RegisterResult") == "true"){
%>
 <p style="color:red"> Register Failed. Please try again. </p>
<%
}
%>
      
          <!-- Remind Passowrd 
          <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
          </div>-->
      
        </div>
      </div>
     
</body>

</html>