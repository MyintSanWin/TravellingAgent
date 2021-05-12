using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MM_Travelling.Controller;
using MM_Travelling.Model;

namespace MM_Travelling.Admin
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminID"] != null)
                {
                    DbContextDataContext db = new DbContextDataContext();
                    ViewState["id"] = Convert.ToInt32(Session["AdminID"]);
                    var data = (from a in db.tbl_Admins where a.AdminID == Convert.ToInt32(ViewState["id"]) select a).FirstOrDefault();
                    txtAdminName.Text = data.AdminName;
                    btnSave.Text = "Update";
                }
                else
                {
                    btnSave.Text = "Save";
                }
                Session["AdminID"] = null;
            }
                
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            AdminController adminController = new AdminController();
            AdminModel admins = new AdminModel();
            if (btnSave.Text == "Save")
            {
               admins.AdminName= txtAdminName.Text.Trim().ToString();
               admins.Password=txtPassword.Text.Trim().ToString();
               admins.UpdateDate=DateTime.UtcNow.ToShortDateString();


               using (DbContextDataContext db = new DbContextDataContext())
               {
                  var data= (from a in db.tbl_Admins where a.AdminName == admins.AdminName select a).ToArray();
                  if (data.Length > 0)
                  {
                      lblerror.Text = "Already Exist!";
                  }
                  else
                  {
                      adminController.InsertAdmin(admins);
                      Response.Redirect("AdminList.aspx");
                      Session["AdminID"] = null;
                  }
               }
            }
            else if (btnSave.Text == "Update")
            {
               admins.AdminID= Convert.ToInt32(ViewState["id"]);
                admins.AdminName = txtAdminName.Text.Trim().ToString();
                admins.Password = txtPassword.Text.Trim().ToString();
                admins.UpdateDate = DateTime.UtcNow.ToShortDateString();
                adminController.UpdateAdmin(admins);
                Response.Redirect("AdminList.aspx");
            }
        }
    }
}