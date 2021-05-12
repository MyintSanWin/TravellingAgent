<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MM_Travelling.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <style>
           .entry {
               width:800px;
              
               border:1px solid black;
           }
           .main {
               margin-top:30px;
               width:1000px;
               height:300px
             
           }
           
          
       </style>
    <center>
     <div class="main">
         <div class="entry">
             <asp:Label ID="Label1" runat="server" Text="Admin Name :"></asp:Label><span style="color: red;">*</span><br />
             <asp:TextBox ID="txtAdminName" runat="server" Width="100%" Height="30px"></asp:TextBox>
         </div>
          <div class="entry">
             <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label><span style="color: red;">*</span><br />
             <asp:TextBox ID="txtPassword" runat="server" Width="100%" Height="30px" TextMode="Password"></asp:TextBox>

         </div>
         <div class="entry">
             <asp:Label ID="Label3" runat="server" Text="Confirm Password :"></asp:Label><span style="color: red;">*</span><br />
             <asp:TextBox ID="txtConfirmPassword" runat="server" Width="100%" Height="30px" TextMode="Password"></asp:TextBox>

         </div>
         <div class="entry">
         <asp:Button ID="btnSave" runat="server" Text="Save" CssClass=" btn-success" Width="100px"></asp:Button>&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass=" btn-danger"  Width="100px"></asp:Button>
         </div>
    </div>
        </center>

</asp:Content>
