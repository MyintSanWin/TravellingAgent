<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="MM_Travelling.User.PackageDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID  ="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
       #label {
       padding-left:30%;
       padding-top:5%;
       }
       #btn {
       padding-left:26%;
       }
       div Label {
       padding-left:200px;
       }
       h1 {
           
           color:palegoldenrod;
       }
   </style>
    <div id="label">
        <h1>Booking To Travel Beautiful Place And View</h1>
    <div> 
        <asp:Label ID="Label1" runat="server" Width="30px" Text="PackageName"></asp:Label><br />
       <asp:TextBox ID="txtPackageName" runat="server" Width="500px" Height="30"></asp:TextBox>
       <%-- <asp:DropDownList ID="ddlPackageName" Width="500px" Height="30" DataTextField="PackageName" DataValueField="DaysAndNights"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPackageName_SelectedIndexChanged"></asp:DropDownList>--%>
         </div>
   
   
        <div>
             <asp:Label ID="Label3" runat="server" Width="30px"  Text="DaysAndNights"></asp:Label><br />
        
    <asp:TextBox runat="server" ID="txtDaysAndNights" Width="500px"  Height="30" />

        </div>
         
         <div >
          <asp:Label ID="Label2" runat="server" Width="30px"  Text="NoOfPeople"></asp:Label><br />
        
    <asp:TextBox runat="server" ID="txtNoOfPeople" Width="500px"  Height="30" />
         </div>
  <div >
          <asp:Label ID="Label5" runat="server" Width="30px"  Text="StayAmount"></asp:Label><br />
       
    <asp:TextBox runat="server" ID="txtStayAmount" Width="500px"  Height="30" />
         </div>
     <div >
          <asp:Label ID="Label6" runat="server"   Text="Food" Width="30px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Yes <asp:RadioButton ID="rdoYes" GroupName="food" Height="30" runat="server" /> No <asp:RadioButton ID="rdoNo" GroupName="food" Height="30" runat="server" />
  
         </div>
     <div >
          <asp:Label ID="Label7" runat="server"  Text="Travelling" Width="30px"></asp:Label>
      
   &nbsp;&nbsp;   &nbsp;&nbsp;   &nbsp;&nbsp;   &nbsp;&nbsp;   &nbsp;&nbsp;
          Flight <asp:RadioButton ID="rdoFlight" GroupName="Travelling" runat="server" Height="30" OnCheckedChanged="rdoFlight_CheckedChanged1" /> Bus <asp:RadioButton ID="rdoBus" GroupName="Travelling" Height="30" runat="server" />
  
         </div>
    <hr style="color:blanchedalmond" />
        <a href="../Admin/PackageDetail.aspx"><i style="color:red">GoToPackageList<<<<<</i></a>
    <div id="btn">
        <asp:Button ID="btnBooking" runat="server" Text="Booking" OnClick="btnBooking_Click" CssClass="btn"   />

    </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>

</asp:Content>
