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
    public partial class PackageDetail : System.Web.UI.Page
    {
        static bool selectedIndexChanged = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            rdoYes.Checked = true;
            rdoBus.Checked = true;

           
               if (!IsPostBack)
                {
                    PackageModel package = (PackageModel)Session["package"];
                   
                    txtPackageName.Text = package.PackageName;
                    txtDaysAndNights.Text = package.DaysAndNights;
                    txtStayAmount.Text = package.StayAmount.ToString();
                    

            }

        }




        protected void btnBooking_Click(object sender, EventArgs e)
        {
            if (txtPackageName.Text !=null)
            {

                DbContextDataContext db = new DbContextDataContext();

                var data = (from a in db.tbl_Packages where a.PackageName == txtPackageName.Text select a).FirstOrDefault();
                BookingModel bModel = new BookingModel();
                BookingController bController = new BookingController();
                bModel.PackageName = data.PackageName;
                bModel.NoOfPeople =Convert.ToInt32( txtNoOfPeople.Text);
                bModel.DaysAndNights = data.DaysAndNights;
                bModel.StayAmount = Convert.ToInt32(data.StayAmount);
                bModel.TransationStatus = rdoBus.Checked.ToString();
                bModel.BookingStatus = rdoYes.Checked.ToString();
                if (bModel.TransationStatus == "True" && bModel.BookingStatus == "True")
                {
                    bModel.Total = (Convert.ToInt32(txtStayAmount.Text) + Convert.ToInt32(data.FoodAmount + data.BusAmount)) * (Convert.ToInt32(txtNoOfPeople.Text));

                }
                else if (bModel.TransationStatus == "False" && bModel.BookingStatus == "True")
                {
                    bModel.Total = (Convert.ToInt32(txtStayAmount.Text) + Convert.ToInt32(data.FoodAmount + data.AirLineAmount)) * (Convert.ToInt32(txtNoOfPeople.Text));
                }
                else if (bModel.BookingStatus == "False" && bModel.TransationStatus == " True")
                {
                    bModel.Total = (Convert.ToInt32(txtStayAmount.Text) + Convert.ToInt32(data.BusAmount)) * (Convert.ToInt32(txtNoOfPeople.Text));
                }
                else if (bModel.BookingStatus == "False" && bModel.TransationStatus == "False")
                {
                    bModel.Total = (Convert.ToInt32(txtStayAmount.Text) + Convert.ToInt32(data.AirLineAmount)) * (Convert.ToInt32(txtNoOfPeople.Text));
                }

                bController.InsertBooking(bModel);
                db.SubmitChanges();
                Session["booking"] = bModel;
            }
          Response.Redirect("Payment.aspx");

        }


        protected void rdoFlight_CheckedChanged1(object sender, EventArgs e)
        {
            BookingController b = new BookingController();

            BookingModel bModel = new BookingModel();
            if (rdoFlight.Checked == true)
            {
                if (bModel.TransationStatus == "True" && bModel.BookingStatus == "True")
                {
                    DbContextDataContext db = new DbContextDataContext();
                    var data = (from a in db.tbl_Packages where a.PackageName == txtPackageName.Text select a).FirstOrDefault();
                }
            }
          


        }

      
    }
}








            

        

       

          
    

       
  
