using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MM_Travelling.Controller;
using MM_Travelling.Model;

namespace MM_Travelling.User
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSginUp_Click(object sender, EventArgs e)
        {
            CustomerController customerController = new CustomerController();
            CustomerModel customer = new CustomerModel();
            
                 if(customerController.CheckCustomerEmail(txtEmail.Text.Trim().ToString()))
           {
                customer.CustomerName=txtUserName.Text.Trim().ToString();
                customer.NRC = txtNRC.Text.Trim().ToString();
                customer.Password = txtPassword.Text.Trim().ToString();
                string gen = "";
                if (rdomale.Checked == true)
                {
                    gen = "Male";
                }
                else
                {
                    gen = "Female";
                }
                customer.Gender = gen.ToString();
                customer.Email = txtEmail.Text.Trim().ToString();
                customer.Phone = txtPhone.Text.Trim().ToString();
                customer.Address = txtAddress.Text.Trim().ToString();
                //customer.Image = FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                customerController.SignUpCustomer(customer);
               // Response.Redirect("CustomerList.aspx");
            }

                 else
                 {
                     ScriptManager.RegisterClientScriptBlock
                        (this, this.GetType(), "alertMessage", "alert('Already Exist?')", true);
                     txtEmail.Focus();
                 }
            
        }
    }
}