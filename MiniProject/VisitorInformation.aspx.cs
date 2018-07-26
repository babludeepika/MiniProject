using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MiniProject
{
    public partial class VisitorInformation : System.Web.UI.Page
    {
        ProjectDbEntities4 db = new ProjectDbEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string firstname = txtfname.Text;
            string lastname = txtlname.Text;
            string company = txtcompany.Text;
            string visiting = txtvisiting.Text;
            string idtype = txtidtype.Text;
            string idnum = txtidno.Text;
            string vehicleno = txtvehicleno.Text;
            string contactno = txtcontactno.Text;
            string purpose = txtpov.Text;
            string status = "Signed In";
            DateTime checktime = DateTime.Now;
            Table tb = new Table();
            tb.firstName = firstname;
            tb.lastName = lastname;
            tb.company = company;
            tb.visiting = visiting;
            tb.idtype = idtype;
            tb.idnum = idnum;
            tb.vehiclenum = vehicleno;
            tb.contactnum = contactno;
            tb.purpose = purpose;
            tb.status = status;
            tb.checktime = checktime;
            db.Tables.Add(tb);
            var res = db.SaveChanges();
            
            if (res > 0)
                Label1.Text = ("The visitor's details has been saved successfully with the visitor id" + ID);
            else
                Label1.Text = "Save Failed";

            txtfname.Text = "";
            txtlname.Text = "";
            txtcompany.Text = "";
            txtvisiting.Text = "";
            txtidtype.Text = "";
            txtidno.Text = "";
            txtvehicleno.Text = "";
            txtcontactno.Text = "";
            txtpov.Text = "";


        }

       
        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}