<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HotelList.aspx.cs" Inherits="MM_Travelling.Admin.HotelList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
.tab-pane {
padding-left:0;
padding-top:20px;
box-sizing:border-box;
grid-column-sizing:auto;
grid-row-align:center;
grid-column-align:center;
border:none;
resize:horizontal ;

 }
.form-check-label {
padding-top:5%;
padding-left:50%;
border:none;
font-size:20px;

 }
         #btnDelete {
             border:none;
             content:"";
             display:block;
             background:url("http://www.w3.org/2000/svg/bi bi-trash-fill") no-repeat;
 
         
         }
</style>
<%--<script>
function isDelete() {
return confirm("Do you want to delete this row ?");
}
</script>--%>
<div class="form-check-label">
<asp:Label ID="Label3" runat="server" Font-Size="Large" Font-Italic="true" ForeColor="WhiteSmoke" Text="Hotel Listing*******"></asp:Label>
</div>
<div class="tab-pane">

 <asp:gridview id="GridView1" AutoGenerateColumns="False" Background="Gray" Width="100%" Height="100%" CellPadding="4" ForeColor="Green" runat="server" DataKeyNames="HotelID" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1"  >

 <Columns>
     <asp:BoundField DataField="HotelID" HeaderText="HotelID" InsertVisible="False" ReadOnly="True" SortExpression="HotelID" />
     <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
     <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
    
</Columns>
<Columns>
<asp:TemplateField HeaderText="Image" ControlStyle-BackColor="Yellow">
<ItemTemplate>
<asp:Image ID="Image1" Width="100" Height="100" ImageUrl='<%# Eval("Image") %>' runat="server" />
</ItemTemplate>

 </asp:TemplateField>
</Columns>
<Columns>
<asp:TemplateField HeaderText="Delete" ControlStyle-BackColor="Black" ControlStyle-ForeColor="White">
<ItemTemplate>

    <asp:Button ID="btnDelete" CssClass="btn" CommandName="DeleteHotel" OnCommand="btnDelete_Command" CommandArgument='<%# Eval("HotelID") %>' runat="server" Text="Remove" />
 >

    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" CommandName="DeleteHotel" OnCommand="LinkButton1_Command" CommandArgument='<%# Eval("HotelID") %>'> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg>New
  </asp:LinkButton>
       

 </ItemTemplate>
</asp:TemplateField>
</Columns>
    
</asp:gridview>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Hotel]" DeleteCommand="DeleteHotel" DeleteCommandType="StoredProcedure" InsertCommand="InsertHotel" InsertCommandType="StoredProcedure" >
   
    </asp:SqlDataSource>

</div>
</asp:Content>
