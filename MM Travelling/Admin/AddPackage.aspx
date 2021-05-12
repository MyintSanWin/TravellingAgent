<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="MM_Travelling.Admin.AddPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .entry {
            width:1000px;
            height:50px;
            margin-left:200px;
            margin-right:150px;
        }
        
        .auto-style1 {
            width: 441px;
        }
        
    </style>
    
  <%--<div style="text-align:center;">--%>
      <div style="text-align:center; font-family:'Times New Roman';font-size:30px;color:black;margin-top:10px;">
          <asp:Label ID="Label1" runat="server" Text="Add Tour Package" ></asp:Label>
      </div>
    <div style="width:100%; ">
      <table class="entry" >
         <div  >
          <tr>
      <td class="auto-style1" >
        <asp:Label ID="Label2" runat="server" Text="Package Name :"></asp:Label> 

      </td>
              <td>
          <asp:TextBox ID="txtPackageName" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
      <hr />
          <div >
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label3" runat="server" Text="Hotel Name :"></asp:Label>

      </td>
              <td>
                  <asp:DropDownList ID="ddlHotel"  DataTextField="HotelName" DataValueField="HotelID" Width="500px" runat="server" ></asp:DropDownList>
     </td>
      
              </tr>
          </div>

          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label14" runat="server" Text="Number Of Days & Nights :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtDayAndNights" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
      <%--    <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label4" runat="server" Text="Number Of Nights :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtNight" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>--%>
          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label15" runat="server" Text="Stay Amount :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtStay" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label16" runat="server" Text="Food Amount :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtFood" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label17" runat="server" Text="Bus Amount :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtBus" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label18" runat="server" Text="Train Amount :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtTrain" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label19" runat="server" Text="Airline Amount :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtAirline" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>

           <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label7" runat="server" Text=" Price :"></asp:Label>

      </td>
              <td>
          <asp:TextBox ID="txtPrice" runat="server" Width="500px"></asp:TextBox>
     </td>
      
              </tr>
          </div>
          <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label20" runat="server" Text="Services :"></asp:Label>

      </td>
              <td>
                  <asp:TextBox ID="txtService" runat="server" Columns="20" Rows="3" Width="500px"></asp:TextBox>

     </td>
      
              </tr>
          </div>
          
         <div>
          <tr>
      <td class="auto-style1" >
          <asp:Label ID="Label5" runat="server" Text="Descriptions :"></asp:Label>

      </td>
              <td>
                            <%--<textarea id="txtDescription" cols="20" rows="2"></textarea>--%>
                  <asp:TextBox ID="txtDescription" runat="server" Columns="20" Rows="3" Width="500px"></asp:TextBox>

     </td>
      
              </tr>
          </div>
           
           <tr>
           <div >
             
               <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Image:" Font-Bold="false" Width="300px" ></asp:Label>
                   </td>
               <td>
                    <asp:TextBox ID="txtImage" Visible="false" Width="100" AutoComplete="off" runat="server"></asp:TextBox>

                    <asp:FileUpload ID="FileUploadImage" runat="server" CssClass="img-fluid" />
                   </td>
                    </div>
        </tr>
          </table>
           <div style="margin-left:50%; margin-top:5px;">
              
              <asp:Button ID="btnSave" runat="server" Text="Save"  Width="120px" Height="40px" CssClass="btn btn-success" OnClick="btnSave_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnCancel" runat="server" Text="Cancle"  Width="120px" Height="40px" CssClass="btn btn-danger" />

          </div>
         
  </div>
    <footer style="margin-top:30px;background-color:pink;text-align:center">
        <div style="height:100px;font-size:large;font-family:'Matura MT Script Capitals';margin-top:50px;">
            <asp:Label ID="Label6" runat="server" Text="Famous Place In Myanmar"></asp:Label>
        </div>


        <div>
            <p></p>
        </div>
    </footer>
</asp:Content>
