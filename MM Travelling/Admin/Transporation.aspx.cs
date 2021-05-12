using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MM_Travelling.Model;
using MM_Travelling.Controller;

namespace MM_Travelling.Admin
{
    public partial class Transporation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            TransporationModel transporation = new TransporationModel();
            TransporationController Transporationcontroller = new TransporationController();
          transporation.TransporationName = txttransporation.Text.Trim().ToString();

          using (DbContextDataContext db = new DbContextDataContext())
          {
              var data=(from a in db.tbl_Transporations where a.TransporationName==transporation.TransporationName select a).ToArray();
              if (data.Length > 0)
              {
                  lblError.Text = "Already Exist";

              }
              else
              {
                  Transporationcontroller.AddTransporation(transporation);
                  Response.Redirect("Transporation.aspx");
              }
          }
        }

        protected void btnEdit_Command(object sender, CommandEventArgs e)
        {

        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {

        }
    }
}