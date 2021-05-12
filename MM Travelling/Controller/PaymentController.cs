using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling.Model;

namespace MM_Travelling.Controller
{
    public class PaymentController
    {
        public void Payment(PaymentModel payment)
        {
            DbContextDataContext db = new DbContextDataContext();
            tbl_Payment p = new tbl_Payment();
            p.PackageName = payment.PackageName;
            p.BookingID =Convert.ToInt32( payment.BookingID);
            p.NoOfPeople = Convert.ToInt32( payment.NoOfPeople);
            p.StayAmount = Convert.ToInt32(payment.StayAmount);
            p.DaysAndNights = payment.DaysAndNights;
            p.PaymentType = payment.PaymentType;
            p.Total =Convert.ToInt32( payment.Total);
            db.tbl_Payments.InsertOnSubmit(p);
            db.SubmitChanges();
        }
    }
}