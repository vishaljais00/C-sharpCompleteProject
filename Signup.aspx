<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>  
<body>  


    <form id="form1" runat="server">  

        
        	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">C#.NET</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link"  href="index.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="about.aspx">About</a>
      </li>
    </ul>
    <span class="navbar-text">
       
   <asp:Button ID="Login"  class="btn btn-primary" runat="server" Text="Go-To-Login"  OnClick="btnLogin_Click" />
    </span>
  </div>
</nav>

        <div class="jumbotron">
  
         <div class="form-group">
    <label for="exampleInputEmail1"> User Id:</label>
       <asp:TextBox  ID="Name" class="form-control" aria-describedby="emailHelp" runat="server"></asp:TextBox>
       
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
        <asp:TextBox  ID="password1" TextMode="Password" class="form-control" aria-describedby="emailHelp" runat="server"></asp:TextBox>
        

  </div>


         <div class="form-group">
    <label for="exampleInputPassword1"> Confirm Password</label>
        <asp:TextBox  ID="password2" TextMode="Password" class="form-control" aria-describedby="emailHelp" runat="server"></asp:TextBox>
             <asp:Label ID="lblError1" runat="server" ForeColor="Red" Text=""></asp:Label>
                  
        

  </div>

         <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
        <asp:TextBox ID="Email" TextMode="Email" class="form-control" aria-describedby="emailHelp" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="signup"  ControlToValidate="Email"   
       ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>  
        
  </div>
 
         <div class="form-group">
    <label for="exampleInputPassword1">Phone</label>
        <asp:TextBox  ID="Phone" TextMode="Number" class="form-control" aria-describedby="emailHelp" runat="server"></asp:TextBox>
        

  </div>
   <asp:Button  ID="SignUp" type="submit" class="btn btn-primary" runat="server" Text="Signup" ValidationGroup="signup" OnClick="signup_click" />
   <asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label>
        

</div>


    </form>  
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
</body>  
</html>     