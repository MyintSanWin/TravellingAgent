<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="MM_Travelling.Admin.Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
.entry {
width:1000px;
padding-top:20px;
}

</style>
<center>
<div class="entry">
<asp:Label ID="Label1" Text="Hotel Name: " runat="server" Width="300px" />
<asp:TextBox runat="server" ID="txtHotelName" Width="300px"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required!!" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtHotelName"></asp:RequiredFieldValidator>
</div>
<div class="entry">
<asp:Label ID="Label2" Text="Description : " runat="server" Width="300px" />
<asp:TextBox runat="server" ID="txtDescription" Width="300px"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!!" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>

 </div>
<div >
<asp:Label ID="Label3" runat="server" Text="Image:" Font-Bold="false" Width="300px" ></asp:Label>
<asp:TextBox ID="txtImage" Visible="false" Width="100" AutoComplete="off" runat="server"></asp:TextBox>
<asp:FileUpload ID="FileUploadImage" runat="server" CssClass="img-fluid" />
</div>

<div> <asp:Button ID="btnSave" runat="server" CssClass="btn-success" Text="Save" OnClick="btnSave_Click" /></div>

 <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Underline="true" Text="" Enabled="false" ></asp:Label>
</center>
</asp:Content>
