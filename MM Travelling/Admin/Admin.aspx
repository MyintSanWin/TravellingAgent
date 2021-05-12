<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MM_Travelling.Admin.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .entry {
          margin: 15px;
        }
        .btnCancle {
           
            background-color:red;
            color:white;
            text-align:center;
        }
        .bi bi-person-plus-fill {
        flex-item-align:center;
        color:blue;
       

        }

    </style>
        <div>
    <div style=" width:100%; height:80vh;" >
        <div style="width:30%; height:80%; margin:40px auto; display: flex;
    flex-direction: column;  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); padding:20px;">
            <svg width="1em" height="1em"  viewBox="0 0 16 16" class="bi bi-person-plus-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7.5-3a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg>
            <div class="entry">
<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
</svg> <asp:Label ID="Label1" Text="Admin Name: " runat="server" Width="300px" /><br />
                <asp:TextBox runat="server" ID="txtAdminName"  Width="300px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required!!" ForeColor="Red" SetFocusOnError="True"  ControlToValidate="txtAdminName"></asp:RequiredFieldValidator>
            </div>
            <div class="entry">
               <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
  <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
</svg> <asp:Label ID="Label2" Text="Password  : " runat="server" Width="300px" /><br />
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" Width="300px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!!" ForeColor="Red" SetFocusOnError="True"  ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

            </div>
            <div class="entry">
              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
  <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
</svg>  <asp:Label ID="Label3" Text="Confirm Password: " runat="server" Width="300px" /><br />
                <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" Width="300px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required!!" ForeColor="Red" SetFocusOnError="True"  ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
               
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ErrorMessage="Password didn't match" ForeColor="#FF3300" SetFocusOnError="True" ></asp:CompareValidator>

            </div>
            <div>
                <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="btn-success"  Width="96px" OnClick="btnSave_Click"  Height="48px" />&nbsp; &nbsp;
               
                <asp:HyperLink ID="HyperLink1" Text="Cancel"  NavigateUrl="~/Admin/AdminList.aspx" runat="server" class="btnCancle" Height="45px" Width="113px" ></asp:HyperLink>
                
            </div>
          <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
          
        </div>
    </div>
    
    </div>
    
  
</asp:Content>
