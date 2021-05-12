using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MM_Travelling.Model
{
    public class BookingModel
    {
        public int BookingID { get; set; }
        public string PackageName { get; set; }
        public int NoOfPeople{get;set;}
        public string DaysAndNights{get;set;}
        public int StayAmount{get;set;}
        public string BookingStatus { get; set; }
        public string TransationStatus{get;set;}
        public int Total{get;set;}

    }
}