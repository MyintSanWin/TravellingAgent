<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="MM_Travelling.Admin.AdminList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .context{
                display: flex;
                flex-direction: row;
                margin:40px ;
        }
        .btn {
             background-color:pink;
             color:black;
             width:80px;
             height:50px;
             padding:2px;

         }
    </style>
    <asp:LinkButton ID="btnCreate" runat="server"  Text ="Create Admin" Width="125px" Height="33px" PostBackUrl="Admin.aspx" style="text-align:center;font-family:'Times New Roman';background-color:pink;color:black;margin-top:20px;margin-left:20px;"></asp:LinkButton>
    <div class="context">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <div  style="border:1px solid black; width:200px; margin:15px; padding:10px;">
            <div>
                <asp:Image ID="Image1" runat="server"  ImageUrl="Images/admin.png" Width="150" Height="150"/><br />
                   <br />
                   <div style="display: flex; flex-direction: row; justify-content: space-between;">

                       <asp:Label ID="Label1" runat="server" Text='<%#Eval("No" )%>' ></asp:Label>
                       <asp:Label ID="Label2" runat="server" Text='<%#Eval("AdminName") %>' align="right"></asp:Label>
            </div>
           

            </div>
            <br />
            <div>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandArgument='<%#Eval("AdminID") %>' CommandName="Edit" OnCommand="btnEdit_Command" CssClass="btn" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("AdminID") %>' CommandName="Delete" OnCommand="btnDelete_Command"  CssClass="btn"/>


            </div>
        </div>
            </ItemTemplate>
    </asp:ListView>
        </div>
    <hr />
      <center>
          <asp:DataPager  ID="DataPager1" runat="server" PageSize="5" PagedControlID="ListView1">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Link" PreviousPageText="Previous" ShowPreviousPageButton="true" ShowNextPageButton="false"  />
            <asp:NumericPagerField ButtonType="Link"  />
            <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" NextPageText="Next" ShowPreviousPageButton="false" />
        </Fields>
    </asp:DataPager>
        </center
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" DeleteCommand="DeleteAdmin" DeleteCommandType="StoredProcedure" SelectCommand="Select Row_Number()Over(Order By AdminName)As No,* From Admin Order By AdminName">
            <DeleteParameters>
                <asp:Parameter Name="AdminID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
        </div>
   
</asp:Content>

