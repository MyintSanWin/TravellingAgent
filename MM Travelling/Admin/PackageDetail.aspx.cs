using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MM_Travelling.Model;
using MM_Travelling.Controller;

namespace MM_Travelling.Admin
{
    public partial class PackageList : System.Web.UI.Page
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

        protected void btnEdit_Command(object sender, CommandEventArgs e)
        {
            //Session["PackageID"] = e.CommandArgument.ToString();

            Response.Redirect("PackageDetail.aspx");
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            
            PackageController pController = new PackageController();
          int id =Convert.ToInt32( e.CommandArgument);
            if (id !=0)
            {
                DbContextDataContext db = new DbContextDataContext();
                var data = (from a in db.tbl_Packages where a.PackageID == Convert.ToInt32(id) select a).FirstOrDefault();
                
                    if (data.PackageID == Convert.ToInt32(id))
                    {
                        PackageModel pmodel=new PackageModel();
                        PackageController pcn = new PackageController();

                        pmodel.PackageID = Convert.ToInt32(data.PackageID);
                        pmodel.PackageName = data.PackageName;
                        pmodel.StayAmount = Convert.ToInt32(data.StayAmount);
                        pmodel.BusAmount = Convert.ToInt32(data.BusAmount);
                        pmodel.AirlineAmount = Convert.ToInt32(data.AirLineAmount);
                        pmodel.DaysAndNights = data.DaysAndNights;
                        pmodel.Description = data.Description;
                        pmodel.Service = data.Service;
                        Session["package"] = pmodel;
                        Response.Redirect("~/User/Booking.aspx");
                    }
            }

        }

    }

}
