using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MM_Travelling.Controller;

namespace MM_Travelling.Admin
{
    public partial class AdminList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Command(object sender, CommandEventArgs e)
        {
            Session["AdminID"] = e.CommandArgument.ToString();

            Response.Redirect("Admin.aspx");
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            AdminController adminController = new AdminController();
            string id = e.CommandArgument.ToString();
            if (id != string.Empty)
            {
                adminController.DeleteAdmin(Convert.ToInt32(id));
            }

        }
    }
}