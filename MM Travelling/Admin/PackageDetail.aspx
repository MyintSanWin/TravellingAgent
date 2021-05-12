<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PackageDetail.aspx.cs" Inherits="MM_Travelling.Admin.PackageList" %>
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
                
               
               <tr>
                   <td>
                       <asp:Button ID="btnEdit" runat="server" BackColor="Red"  CssClass="btn" Text="BackToPackage" />
                   </td>
                   <td>
                        <asp:Button ID="btnDelete" BackColor="Red" runat="server" CommandName="DeletePackage" CommandArgument='<%# Eval("PackageID") %>' OnCommand="btnDelete_Command" CssClass="btn" Text="MoreDetail" />
                   </td>
               </tr>
            </table>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="Select Row_Number()Over(Order By PackageName)As No,* From Package Order By PackageName" DeleteCommand="DeletePackage" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>
