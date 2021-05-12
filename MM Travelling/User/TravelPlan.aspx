<%@ Page Title="" Language="C#" MasterPageFile="~/User/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="TravelPlan.aspx.cs" Inherits="MM_Travelling.User.TravelPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
      div  h1 {
       text-align:center;
       font-size:26px;
       color:red;
       }
       .form-row{
       text-align:center;
       background-image:inherit;
       }
       .col-form-label {
       text-align:center;
       }
       .btn {
       flex-item-align:center;
       padding-left:80%;
       }

       #btnBooking {
      padding-right:60%;
     
       fit-position:center;
       }
       #dd {
       width:600px;
       margin-right:50px;
       }
      div label {
       color:white;
       font-size:20px;

       font-style:oblique;
       }
       a:hover {
       color:hotpink;
       }
       .dd {
       
       flex-direction:row;
       }
       .break {
       word-break:break-word;
       }
   </style>
     
 <script>
     $(document).scroll(function () {
         var y = $(document).scrollTop(), //get page y value 
             header = $("#dd"); // your div id
         if (y >= 400) {
             header.css({ position: "fixed", "top": "0", "left": "0" });
         } else {
             header.css("position", "static");
         }
     });
 </script>
      <table>
      
      <asp:DataList ID="DataList1" CssClass="d-flex dd" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
  <ItemTemplate> 
   <div id="dd"> <h1>Description Travel Planning</h1> 
       <div > <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' Width="570" Height="200" runat="server" />
            <i style="color:darkgoldenrod" >  <asp:Label ID="PackageNameLabel" runat="server" Text='<%# Eval("PackageName") %> '></asp:Label></i><br />
          
  <i style="color:darkgoldenrod" >  <asp:Label ID="DaysLabel" runat="server"  Text='<%# Eval("DaysAndNights") %>'></asp:Label></i>   
       
         
       </div>
     
      
       <a href="../Admin/PackageDetail.aspx">
 <asp:Label ID="DescriptionLabel" BackColor="White" asp-area="" asp-controller="TravelPlanController" asp-action="one" CssClass="text-justify break"  Width="100%" runat="server" Text='<%# Eval("Description") %>' /></a>
           
     
  
       
      &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp; 
      &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      
      <br />
       <br />
      <br /> 
      
   
     
      <br />
      <br />
         </div>
          </ItemTemplate>
 
      
    </asp:DataList>
   
  
          

          </table>

     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>
   
</asp:Content>
