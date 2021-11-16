<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopMenu.ascx.cs" Inherits="WebApplication1.UserControl.TopMenu" %>


  <!-- Navbar content -->
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
      <li class="nav-item">
        <a class="nav-link"  href="dashboard.aspx">DashBoard</a>
      </li>
    </ul>
    <span class="navbar-text">
        <asp:Button runat="server" type="button" class="btn btn-primary btn-sm" ID="Login" Visible=true Text="Login" OnClick="Login_Click" />
        <asp:Button runat="server" type="button" class="btn btn-primary btn-sm ml-3" ID="Signup" Visible=true Text="Signup" OnClick="Signup_Click" />
      <asp:Button runat="server" type="button" class="btn btn-primary btn-sm" ID="Logout" Visible=false Text="LogOut" OnClick="Logout_Click" />
    </span>
  </div>
</nav>


<%--<ul>
	<li>
		<a>Home
		</a>
	</li>
	<li><a href="about.aspx">About Us
		</a>
	</li>
	<li><a>Dashboard
		</a>
	</li>
	<li style="list-style-type:none; padding: 10px">
		<asp:Button runat="server" ID="Logout" Visible=false Text="LogOut" OnClick="Logout_Click" />
	</li>
</ul>--%>

