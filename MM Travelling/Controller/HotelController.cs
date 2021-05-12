using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling.Model;

namespace MM_Travelling.Controller
{
    public class HotelController
    {
        public void AddingHotel(HotelModel Hotel)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                tbl_Hotel hotel = new tbl_Hotel();
                hotel.HotelName = Hotel.HotelName;
                hotel.Description = Hotel.Description;

                db.tbl_Hotels.InsertOnSubmit(hotel);
                db.SubmitChanges();

            }

        }
        public void UpdateImage(HotelModel hotel)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                var data = (from a in db.tbl_Hotels where a.HotelName == hotel.HotelName select a).FirstOrDefault();
                data.Image = hotel.Image;
                db.SubmitChanges();

            }
        }
        public void DeleteHotel(int hotelid)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                var data = (from a in db.tbl_Hotels where a.HotelID == hotelid select a).FirstOrDefault();

                if (data != null)
                {
                    db.tbl_Hotels.DeleteOnSubmit(data);
                    db.SubmitChanges();
                }

            }

        }
    }
}