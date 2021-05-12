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
    public partial class Hotel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["HotelID"] != null)
                {
                    DbContextDataContext db = new DbContextDataContext();
                    ViewState["id"] = Convert.ToInt32(Session["HotelID"]);
                    var data = (from a in db.tbl_Hotels where a.HotelID == Convert.ToInt32(ViewState["id"]) select a).FirstOrDefault();
                    txtHotelName.Text = data.HotelName;


                }
            }
        }
        private string ImageLocation(int HotelID)
        {
            string filename = FileUploadImage.FileName;
            string FilePath = Server.MapPath("~/Images") + HotelID + ".jpg";
            if (System.IO.File.Exists(FilePath))
                System.IO.File.Delete(FilePath);
            if (filename != string.Empty)
            {
                FileUploadImage.SaveAs(FilePath);
                return "~/Images" + HotelID + ".jpg";
            }
            else
            {
                return "~/Images/a.jpg";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            {

                HotelController hController = new HotelController();
                HotelModel hModel = new HotelModel();


                hModel.HotelName = txtHotelName.Text.Trim().ToString();
                hModel.Description = txtDescription.Text.Trim().ToString();
                hController.AddingHotel(hModel);
                DbContextDataContext db = new DbContextDataContext();
                var data = (from a in db.tbl_Hotels where a.HotelName == hModel.HotelName select a).FirstOrDefault();
                hModel.Image = ImageLocation(data.HotelID);
                hController.UpdateImage(hModel);
                Response.Redirect("HotelList.aspx");

                {
                    lblError.Text = "This Hotel Name is Already Exist";

                }


            }
        }

    }
}
