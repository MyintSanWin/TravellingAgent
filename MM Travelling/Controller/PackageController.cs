using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling.Model;

namespace MM_Travelling.Controller
{
    public class PackageController
    {
        public void AddPackage(PackageModel package)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                tbl_Package Package = new tbl_Package();
                Package.PackageName = package.PackageName;
                Package.HotelID = Convert.ToInt32(package.HotelID);
                Package.DaysAndNights = package.DaysAndNights;
                Package.StayAmount = package.StayAmount;
                Package.FoodAmount = Convert.ToInt32(package.FoodAmount);
                Package.BusAmount = Convert.ToInt32(package.BusAmount);
                Package.TrainAmount = Convert.ToInt32(package.TrainAmount);
                Package.AirLineAmount = Convert.ToInt32(package.AirlineAmount);
                Package.Service = package.Service;
                Package.Description = package.Description;
                Package.Image = package.Image;
                //Package.BookingStatus = package.BookingStatus;
                //Package.TransationStatus = package.TransationStatus;
                db.tbl_Packages.InsertOnSubmit(Package);
                db.SubmitChanges();


            }


            //     }
            //public void UpdateImage(PackageModel package)
            //{
            //    using (DbContextDataContext db = new DbContextDataContext())
            //    {
            //        var data = (from a in db.tbl_Packages where a.PackageName == package.PackageName select a).FirstOrDefault();
            //        data.Image = package.Image;
            //        db.SubmitChanges();

            //    }
            //}
            //public void UpdatePackae(PackageModel package)
            //{
            //    using (DbContextDataContext db = new DbContextDataContext())
            //    {
            //        var data = (from a in db.tbl_Packages where a.PackageID == package.PackageID select a).FirstOrDefault();
            //        data.PackageName = package.PackageName;
            //        data.DaysAndNights = package.DaysAndNights;
            //        data.Service = package.Service;
            //        data.Description = package.Description;

            //        db.SubmitChanges();
            //    }
            //}
            //public void DeletePackage(int PackageID)
            //{
            //    using (DbContextDataContext db = new DbContextDataContext())
            //    {
            //        var data = (from a in db.tbl_Packages where a.PackageID == PackageID select a).FirstOrDefault();

            //    if(data !=null)
            //        {
            //            db.tbl_Packages.DeleteOnSubmit(data);
            //             db.SubmitChanges();
            //        }

            //    }
            //}
        }
       
    }
}


      