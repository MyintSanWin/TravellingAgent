using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MM_Travelling.Model
{
    public class PaymentModel
    {
        public int PaymentID { get; set; }
        public int BookingID { get; set; }
        public string PackageName { get; set; }
        public string DaysAndNights { get; set; }
        public int StayAmount { get; set; }
        public int NoOfPeople { get; set; }
        public string PaymentType { get; set; }
        public int Total { get; set; }

    }
}