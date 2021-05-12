using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MM_Travelling.Model
{
    public class PackageModel
    {
        public int PackageID { get; set; }
        public String PackageName { get; set; }
        public string DaysAndNights { get; set; }
        public int Price { get; set; }
        public int HotelID { get; set; }
        public int StayAmount { get; set; }
        public int FoodAmount{get;set;}
        public int BusAmount { get; set; }
        public int TrainAmount { get; set; }
        public int AirlineAmount { get; set; }
        public String Service { get; set; }
        public String Description { get; set; }
        public String Image { get; set; }
        //public string BookingStatus { get; set; }
        //public string TransationStatus { get; set; }


    }
}