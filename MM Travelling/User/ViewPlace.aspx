<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewPlace.aspx.cs" Inherits="MM_Travelling.User.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        div {
       text-align:center;
       background-color:lightcyan;
     
       }
       strong {
       color:white;
       }
       #lblPackage {
       color:yellow;
       }
       #lblDays {
       color:yellow;
       }
       #lblNights {
       color:yellow;
       }
       p {
           color:yellow;
       }
       .datalist {
       
           padding-top:3%;
           padding-left:7%;
       }
       input {
       width:200px;
       height:200px;
       }
   </style>
    <div class="search" > 
       <asp:Label ID="Label1" runat="server" CssClass="col-form-label-lg" Text="Destination Place:">Search Destination Place<svg width="70px" height="40px" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
</svg></asp:Label>
         <asp:TextBox ID="txtSearch" Width="200px" Height="30px" runat="server" AutoPostBack="True" AutoComplete="off"></asp:TextBox>
       
    
   </div>
    <div class="datalist">
    
    <asp:DataList ID="ddlBookingDetail" RepeatDirection="Vertical" RepeatColumns="5" runat="server" OnSelectedIndexChanged="ddlBookingDetail_SelectedIndexChanged"   >
       
        <ItemStyle CssClass="align-content-lg-around" />
        <ItemTemplate>
            <table>
                <tr>
                   <table border="0">
                <tr>
                   
                    <td>
                        
                  <a href="TravelPlan.aspx">      <asp:Image ID="Image1" Width="250px" Height="160px"  CssClass="img-fluid" runat="server" ImageUrl='<%# Eval("Image") %>' /></a>
                        <br />  
                        <u><asp:Label ID="lblPackage" runat="server" Text='<%# Eval("PackageName") %>'> 
                                    </asp:Label>  </u> <br />
                     <i style="color:darkgoldenrod" >  <asp:Label ID="lblDays" runat="server" Text='<%# Eval("DaysAndNights") %>'></asp:Label></i> 
                        

                    </td>    
                   
                </tr>
             
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Package]" ></asp:SqlDataSource>
        </div>
</asp:Content>
