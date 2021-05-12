using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling.Model;

namespace MM_Travelling.Controller
{
    public class BookingController
    {
        public void InsertBooking(BookingModel booking)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {

                tbl_Booking b = new tbl_Booking();
                b.BookingID = Convert.ToInt32(booking.BookingID);
                b.PackageName = booking.PackageName;
                b.NoOfPeople =Convert.ToInt32( booking.NoOfPeople);
                b.NoOfDays_Nights = booking.DaysAndNights;
              
                b.StayAmount = booking.StayAmount;
               
                b.BookingStatus = booking.BookingStatus.ToString();
                b.TransationStatus = booking.TransationStatus.ToString();
                b.Total = booking.Total;

                db.tbl_Bookings.InsertOnSubmit(b);
                db.SubmitChanges();
            }
        }

    }
}