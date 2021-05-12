using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MM_Travelling.Controller;
using MM_Travelling.Model;

namespace MM_Travelling
{
    public partial class SignIn : System.Web.UI.Page
    {
        string email, password;
        protected void Page_Load(object sender, EventArgs e)
        {

            lblError.Visible = false;
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            DbContextDataContext db = new DbContextDataContext();

            CustomerController customerController = new CustomerController();
            AdminController adminController = new AdminController();
            email = txtEmail.Text.Trim().ToString();
            password = txtPassword.Text.Trim().ToString();
            if (customerController.CustomerLogIn(email, password))
            {
                var id = db.CustomerLogIn(email, password).FirstOrDefault();
                Session["CID"] = id.CustomerID.ToString();
                Response.Redirect("Default.aspx");
            }
            else if (adminController.AdminLogIn(email, password))
            {

                var id = db.AdminLogIn(email, password).FirstOrDefault();
                Session["AdminID"] = id.AdminID.ToString();
                Response.Redirect("~/Admin/AdminList.aspx");
            }
            else
            {
                lblError.Visible = true;
            }
        }
    }
}