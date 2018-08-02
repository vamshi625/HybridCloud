<!DOCTYPE HTML>
<html>

<head>
 <title>Hybrid Cloud</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
   <link rel="shortcut icon" type="image/x-icon" href="images/brainstorming_alternative.png"/>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
  <script>
      function validation(){
          if(document.name.token.value==0){
              alert('Enter your token');
              document.name.token.focus();
              return false;
          }
      }
  </script>
  
  <style>
      form,h1{
          position: relative;
          left: 350px;
          
      }
      
    #id{
        width: 200px;
        height: 25px;
        background-color: #D5D5D5;
    }
    #but{
        width: 60px;
        height: 25px;
    }
</style>
</head>

<body>
        <%
    if(request.getParameter("status")!=null){
        out.println("<script>alert('Uploaded...')</script>");
    }
     if(request.getParameter("failed")!=null){
        out.println("<script>alert('file already exist...')</script>");
    }
    %>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
         <pre> <h2><a href="index.html">A Hybrid Cloud Approach For Secured Authorized Data De-Duplication</a></h2>
          <h2 style="font-size: 22px">for multi-authority cloud storage</h2>
         </pre>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
            <li ><a href="update.jsp">Update</a></li>
            <li><a href="upload.jsp">Upload</a></li>
            <li><a href="download.jsp">Download</a></li>
        
          <li><a href="#"><img width="40" height="40" src="images/user.png" alt="photo_two" /></a>
            <ul>
                <li><a href="index.html">Logout</a></li>
<!--                <li><a href="register.jsp">Register</a></li>-->
             
            </ul>
          </li>
         
        </ul>
      </nav>
    </header>
    <div id="site_content">

      <div id="content">
          <%
HttpSession user=request.getSession();
String uname=user.getAttribute("username").toString();   
String name=user.getAttribute("name").toString();      
%>
<h1>Welocme ! <font style="color: tomato"> <%=name%></font></h1>

<form action="upload" name="name" method="post" enctype="multipart/form-data">
        <input type="file" name="file" ><br></br>
        <pre>
    <input type="submit" id="but" style="background-color: #009900"value="Upload">  <input type="reset"id="but"  style="background-color: #AA3300"value="Reset">
        </pre>
        
    </form>


       
      </div>
    </div>
    <footer>
      <p>Copyright &copy; 2014. All Rights Reserved.</p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>
