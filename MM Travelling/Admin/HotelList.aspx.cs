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
    public partial class HotelList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                using (DbContextDataContext db = new DbContextDataContext())
                {
                    var data = (from a in db.tbl_Hotels select a).FirstOrDefault();
                    //GridView1.DataBind();


                }
            }
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            HotelController hcontroller = new HotelController();
            string id = e.CommandArgument.ToString();
            if (id != string.Empty)
            {
                hcontroller.DeleteHotel(Convert.ToInt32(id));
            }

        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Hotel.aspx");
        }


      

      
    }
}
