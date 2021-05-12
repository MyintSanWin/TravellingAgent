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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SelectData();
            }


            //ddlBookingDetail.DataSource = SqlDataSource1;
            //ddlBookingDetail.DataBind();

        }

       
        public void SelectData()
        {
            ddlBookingDetail.SelectedIndex = 0;
            using (DbContextDataContext db = new DbContextDataContext())
            {
                List<tbl_Package> lstPackage = new List<tbl_Package>();
                tbl_Package tbl = new tbl_Package();
                tbl.PackageID = 0;
                var lst = db.SelectPackages().ToList();
                foreach (var d in lst)
                {
                    lstPackage.Add(d);
                }
                ddlBookingDetail.DataSource = lstPackage;
                ddlBookingDetail.DataBind();
              
            }

        }

        protected void ddlBookingDetail_SelectedIndexChanged(object sender, EventArgs e)
        {
           

            if (Session["PackageID"] == null)
            {
                DbContextDataContext db = new DbContextDataContext();
                ViewState["id"] = Convert.ToInt32(Session["PackageID"]);
                var data = (from a in db.tbl_Packages where a.PackageID == Convert.ToInt32(ViewState["id"]) select a).FirstOrDefault();
                ddlBookingDetail.DataBind();
               Response.Redirect("TravelPlan.aspx");
               
            }
        }

    }
}
     

        
      
        
    
 