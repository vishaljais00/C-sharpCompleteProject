<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="footer.ascx.cs" Inherits="WebApplication1.UserControl.footer" %>


<footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2020 Copyright:
    <a class="text-dark"> <%=Convert.ToString(Session["UserID"]) %> </a>
  </div>
  <!-- Copyright -->
</footer>

