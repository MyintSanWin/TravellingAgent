<%@ Page Title="" Language="C#" MasterPageFile="~/User/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PackageDetail.aspx.cs" Inherits="MM_Travelling.User.PackageDetail1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>

        #LinkButton1 {
        font-size:10px;
        color:blueviolet;
        font-style:italic;
        padding-left:10%;
        }

    </style>
    


    <asp:DataList ID="ddl" RepeatDirection="Horizontal" RepeatColumns="4" runat="server">
        <HeaderTemplate>
            <table>
                <tr>
                    <td>
                        <h2>Package Detail</h2>
                    </td>
                </tr>
               
            </table>
            
        </HeaderTemplate>
        <ItemStyle CssClass="align-items-lg-baseline" />
        <ItemTemplate>
            <table border="1">
                <tr>
                    <td>
                       <strong> PackageName</strong>
                    </td>
                    <td>
                        <asp:Label ID="lblPackage" runat="server" Text='<%# Eval("PackageName") %>'>  
                                    </asp:Label>  
                    </td>
                    <td rowspan="5">
                         <asp:Image ID="PackageImage" runat="server" ImageUrl='<%# Eval("Image") %>' Height="180px" Width="200px" />  
                      
                    </td>
                </tr>
               

                <tr>
                    <td>
                      <strong> Days</strong> 
                    </td>
                    <td>
                         <asp:Label ID="lblDays" runat="server" Text='<%# Eval("DaysAndNights") %>'>  
                                    </asp:Label>  
                    </td>
                </tr>
             
                <tr>
                    <td>
                       <strong> Service</strong>
                    </td>
                    <td>
                         <asp:Label ID="lblService" runat="server" Text='<%# Eval("Service") %>'>  
                                    </asp:Label>  
                    </td>
                </tr>
                <%--<a href="BookingDetail.aspx">More Detail</a>--%>
               
               <tr>
                   <td>
                       <asp:Button ID="btnBack" runat="server" BackColor="Red" OnCommand="btnBack_Command" CommandName="BackToList"  CommandArgument='<%# Eval("PackageID") %>'  CssClass="btn" Text="Go Back" />
                   </td>
                   <td>
                        <asp:Button ID="btnMoreDetail" BackColor="Red" runat="server" OnCommand="btnMoreDetail_Command" CommandName="MoreDetail"  CommandArgument='<%# Eval("PackageID") %>'  CssClass="btn" Text="MoreDetailView" />
                   </td>
               </tr>
            </table>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Package] WHERE ([PackageID] = @PackageID)">
        <SelectParameters>
            <asp:SessionParameter Name="PackageID" SessionField="PackageID" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>

</asp:Content>
