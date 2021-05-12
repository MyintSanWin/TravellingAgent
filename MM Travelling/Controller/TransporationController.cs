using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling.Model;

namespace MM_Travelling.Controller
{
    public class TransporationController

    {
        public void AddTransporation(TransporationModel transporation){

      using (DbContextDataContext db=new DbContextDataContext())
      {
          tbl_Transporation Transporation = new tbl_Transporation();
          Transporation.TransporationName = transporation.TransporationName;
          db.tbl_Transporations.InsertOnSubmit(Transporation);
          db.SubmitChanges();
      }
      }
        public void DeleteTransporation(int transporationid)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
               
                var data = (from a in db.tbl_Transporations where a.TransporationID == transporationid select a).ToArray();
                foreach (var field in data)
                {
                    db.tbl_Transporations.DeleteOnSubmit(field);
                }
                db.SubmitChanges();
            }
        }
    }
}