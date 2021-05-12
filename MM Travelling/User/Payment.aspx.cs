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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                BookingModel bookingModel = (BookingModel)Session["booking"];
                DbContextDataContext db = new DbContextDataContext();
                var data = (from a in db.tbl_Bookings where a.PackageName == bookingModel.PackageName select a).FirstOrDefault();
           PaymentModel pmodel = new PaymentModel();
           pmodel.PackageName = data.PackageName;
           pmodel.NoOfPeople = Convert.ToInt32(bookingModel.NoOfPeople);
           pmodel.DaysAndNights = data.NoOfDays_Nights;
           pmodel.PaymentType = rdocredit.Checked.ToString();
           pmodel.Total = Convert.ToInt32(data.Total);
           txtPackageName.Text = pmodel.PackageName;
           txtNoOfPeople.Text = pmodel.NoOfPeople.ToString() ;
           txtStayAmount.Text = bookingModel.StayAmount.ToString();
           txtDaysAndNights.Text = pmodel.DaysAndNights;
           txtTotalAmount.Text = bookingModel.Total.ToString();
          
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            PaymentController pc = new PaymentController();
            PaymentModel pm = new PaymentModel();
            DbContextDataContext db = new DbContextDataContext();
            var data = (from a in db.tbl_Bookings where a.PackageName == txtPackageName.Text select a).FirstOrDefault();
            pm.BookingID = data.BookingID;
            pm.PackageName = txtPackageName.Text;
            pm.NoOfPeople =Convert.ToInt32( txtNoOfPeople.Text);
            pm.StayAmount =Convert.ToInt32( txtStayAmount.Text);
            pm.Total = Convert.ToInt32(txtTotalAmount.Text);
            pm.DaysAndNights = txtDaysAndNights.Text;
            if (rdocredit.Checked)
            {
                pm.PaymentType = "CreditCard";
            }
            else
            {
                pm.PaymentType = "MasterCard";
            }

            PaymentController pcontroller = new PaymentController();
            pcontroller.Payment(pm);
            Response.Write("Your Booking is Confirm");
        }
    }
}  