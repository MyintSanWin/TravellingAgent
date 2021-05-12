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
    public partial class PackageDetail1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (!IsPostBack)
            {
                if (Session["PackageID"] != null)
                {

                    DbContextDataContext db = new DbContextDataContext();
                    ViewState["PackageID"] = Session["PackageID"];
                    var data = (from a in db.tbl_Packages where a.PackageID == Convert.ToInt32( ViewState["id"]) select a).FirstOrDefault();
                    Response.Write(data);
                }
               Bind();
                }
            }
        public void Bind()
        {
            using(DbContextDataContext db=new DbContextDataContext())
            {
              
                var data=(from a in db.tbl_Packages select a).FirstOrDefault();
                ddl.DataSource = SqlDataSource1;
                ddl.DataBind();
            }
        }

        protected void btnBack_Command(object sender, CommandEventArgs e)
        {

        }

        protected void btnMoreDetail_Command(object sender, CommandEventArgs e)
        {

        }

        }
    }
