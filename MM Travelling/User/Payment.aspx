<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MM_Travelling.User.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style>
        .text-body {
            text-align:center;
            padding-left:30px;
            padding-top:20px;
        }
        h1 {
            text-align:center;
            font-family:001 Disney's Pooh1;
                'Fontovision II 3D';
        }
        Label {
            color:GrayText;
            font-family:icon-brand;  
        }
    </style>
   <div class="text-body">
       <h1 style="color:palegoldenrod ;"><i> Package Detail Information</i></h1>
        <div> 
             Master Card   <asp:RadioButton ID="rdomaster" runat="server" GroupName="PaymentCardType" /> Credit Card <asp:RadioButton ID="rdocredit" runat="server" GroupName="PaymentCardType" /><br /><br />

        <asp:Label ID="Label1" runat="server" Width="30px" Text="PackageName"></asp:Label><br />
       <asp:TextBox ID="txtPackageName" runat="server" Width="500px" Height="30"></asp:TextBox>
  
         </div>
   <hr style="color:hotpink ActiveBorder Scrollbar;"/>
   
        <div>
             <asp:Label ID="Label3" runat="server" Width="30px"  Text="DaysAndNights"></asp:Label><br />
        
    <asp:TextBox runat="server" ID="txtDaysAndNights" Width="500px"  Height="30" />

        </div>
       <hr style="color:hotpink ActiveBorder Scrollbar;"/>
      <div>
             <asp:Label ID="Label4" runat="server" Width="200px" Text="No Of People"></asp:Label><br />
        
    <asp:TextBox runat="server" ID="txtNoOfPeople" Width="500px" Height="30" ></asp:TextBox>


        </div>
       <hr style="color:hotpink ActiveBorder Scrollbar;"/>
     <div >
          <asp:Label ID="Label5" runat="server" Width="30px"  Text="StayAmount"></asp:Label><br />
       
    <asp:TextBox runat="server" ID="txtStayAmount" Width="500px"  Height="30" />
         </div>
         
         <hr style="color:hotpink ActiveBorder Scrollbar;"/>
   <div>
        <asp:Label ID="Label2" runat="server" Width="30px"  Text="TotalAmount" ></asp:Label><br />
        
    <asp:TextBox runat="server" ID="txtTotalAmount" Width="500px" Height="30px"></asp:TextBox>

   </div>
       <div>
           <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" />

       </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>
</asp:Content>
