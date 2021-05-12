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
    public partial class AddPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                AddDropDown();
              


            }
         

        }
        private void AddDropDown()
        {
            ddlHotel.SelectedIndex = 0;
            using (DbContextDataContext db = new DbContextDataContext())
            {
                List<tbl_Hotel> lstHotel = new List<tbl_Hotel>();
                tbl_Hotel tbl = new tbl_Hotel();
                tbl.HotelID = 0;
                tbl.HotelName = "----Select----";
                lstHotel.Add(tbl);
                var lst = db.SelectHotelAll().ToList();
                foreach (var d in lst)
                {
                    lstHotel.Add(d);
                }
                ddlHotel.DataSource = lstHotel;
                ddlHotel.DataBind();
               
            }
            
        }
              
        protected void btnSave_Click(object sender, EventArgs e)
        {
            PackageController PackageController = new PackageController();
            PackageModel _package = new PackageModel();

            if (btnSave.Text == "Save")
            {
                _package.PackageName = txtPackageName.Text.Trim().ToString();
                _package.HotelID = Convert.ToInt32(ddlHotel.SelectedValue.ToString());
               
                _package.DaysAndNights = txtDayAndNights.Text.Trim().ToString();
                _package.StayAmount = Convert.ToInt32(txtStay.Text.Trim().ToString());
                _package.FoodAmount = Convert.ToInt32(txtFood.Text.Trim().ToString());
                _package.BusAmount = Convert.ToInt32(txtBus.Text.Trim().ToString());
                _package.TrainAmount = Convert.ToInt32(txtTrain.Text.Trim().ToString());
                _package.AirlineAmount = Convert.ToInt32(txtAirline.Text.Trim().ToString());
                _package.Price = Convert.ToInt32(txtPrice.Text.Trim().ToString());
                _package.Service = txtService.Text.Trim().ToString();
                _package.Description = txtDescription.Text.Trim().ToString();

                PackageController.AddPackage(_package);
                DbContextDataContext db = new DbContextDataContext();
                var data = (from a in db.tbl_Packages where a.PackageName == _package.PackageName select a).FirstOrDefault();
                _package.Image = ImageLocation(data.PackageID);
              
                Response.Redirect("PackageDetailAdminView.apsx");

            }
        }
        private string ImageLocation(int PackageID)
        {
            string filename = FileUploadImage.FileName;
            string FilePath = Server.MapPath("~/Images") + PackageID + ".jpg";
            if (System.IO.File.Exists(FilePath))
                System.IO.File.Delete(FilePath);
            if (filename != string.Empty)
            {
                FileUploadImage.SaveAs(FilePath);
                return "~/Images" + PackageID + ".jpg";
            }
            else
            {
                return "~/Images/a.jpg";
            }
        }
       
    }
}