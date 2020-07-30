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
          <h2 class="active"> Sign In </h2>
          <h2 class="inactive underlineHover"><a href="register.jsp">Sign Up</a> </h2>
      
          <!-- Icon -->
          <div class="fadeIn first">
            <img src="images/commerce.png" id="icon" alt="User Icon" />
          </div>
      
          <!-- Login Form -->
          <form action="login" method="post">
            <input type="text" id="login" class="fadeIn second" name="mail" placeholder="Mail">

            <input type="password" id="password" class="fadeIn third" name="pass" placeholder="password" maxlength=12>
            <input type="submit" class="fadeIn fourth" value="Log In">
          </form>
          
      
          <!-- Remind Passowrd -->
          <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
          </div>
      
        </div>
      </div>
     
</body>

</html>