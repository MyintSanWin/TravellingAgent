<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Transporation.aspx.cs" Inherits="MM_Travelling.Admin.Transporation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .entry {
            width:1000px;
            height:30px;
            font-size:large;
            text-align:center;
        }
    </style>
    <div>
        <div style="text-align:center;margin-top:20px;color:black;">
            <h2>Add Transporation</h2>
        </div>
        <center>
        <div class="entry">
            <asp:Label ID="Label1" runat="server" Text="Transporation Name :"></asp:Label>
            <asp:TextBox ID="txttransporation" runat="server" Width="300px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
           <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn-success" Width="120px" OnClick="btnSave_Click"></asp:Button>

        </div>
       <div>
                 <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
       </div>
           </center>   
    </div>
    <hr />
    <center>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TransporationID" DataSourceID="SqlDataSource1" Width="381px">
            <Columns>
                <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                <asp:BoundField DataField="TransporationID" HeaderText="TransporationID" InsertVisible="False" ReadOnly="True" SortExpression="TransporationID" Visible="False" />
                <asp:BoundField DataField="TransporationName" HeaderText="TransporationName" SortExpression="TransporationName" />
                <asp:TemplateField>
                    <ItemTemplate>
                       <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" CommandArgument='<%#Eval("TransporationID") %>' OnCommand="btnEdit_Command" ></asp:LinkButton>
                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("TransporationID") %>' OnCommand="btnDelete_Command"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="Select Row_Number() over(Order By TransporationName )as No, * From Transporation Order By TransporationName
" DeleteCommand="@transporationID int
Delete from Transporation Where @transporationID=TransporationID">
            <DeleteParameters>
                <asp:Parameter Name="transporationID" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </div>
  </center>
</asp:Content>
