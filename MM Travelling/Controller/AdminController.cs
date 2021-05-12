using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling .Model;

namespace MM_Travelling.Controller
{
    public class AdminController
    {
        public void InsertAdmin(AdminModel admin)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                tbl_Admin Admin = new tbl_Admin();
                Admin.AdminName = admin.AdminName;
                Admin.Password = admin.Password;
                Admin.UpdateDate = admin.UpdateDate;

                db.tbl_Admins.InsertOnSubmit(Admin);
                db.SubmitChanges();
            }

        }
        public void UpdateAdmin(AdminModel admin)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
              var data=  (from a in  db.tbl_Admins where a.AdminID== admin.AdminID select a).FirstOrDefault();
              data.AdminName = admin.AdminName;
              data.Password = admin.Password;
              data.UpdateDate = admin.UpdateDate;

              db.SubmitChanges();

            }


        }
        public void DeleteAdmin(int adminid)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                var data = (from a in db.tbl_Admins where a.AdminID == adminid select a).ToList();

                foreach (var field in data)
                {
                    db.tbl_Admins.DeleteOnSubmit(field);
                }

                db.SubmitChanges();
            }

        }
        public bool AdminLogIn(string email, string password)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                var data = db.AdminLogIn(email, password).ToArray();
                if (data.Count() == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

    }

}