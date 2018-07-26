using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MiniProject
{
    public partial class checkoutPage : System.Web.UI.Page
    {
        ProjectDbEntities4 db = new ProjectDbEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var data = (from t in db.Tables
                            where t.status == "Signed In"
                            select new
                            {
                                id=t.Id,
                                firstname = t.firstName,
                                lastname = t.lastName,
                                IdType = t.idtype,
                                IDNum = t.idnum
                            }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text))

            {
                int id = int.Parse(TextBox1.Text);
                var data = (from t in db.Tables
                            where (t.Id == id && t.status == "Signed In")
                            select new
                            {
                                Id=t.Id,
                                firstname = t.firstName,
                                lastname = t.lastName,
                                IDType = t.idtype,
                                IDNum = t.idnum
                            }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text))

            {
                string name = TextBox1.Text;

                var data = (from t in db.Tables
                            where (t.firstName == name && t.status == "Signed In")
                            select new
                            {
                                Id = t.Id,
                                firstname = t.firstName,
                                lastname = t.lastName,
                                IDType = t.idtype,
                                IDNum = t.idnum
                            }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
       
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
        protected void b1_Click1(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            int id = int.Parse(r.Cells[1].Text);
            var olddata = (from t in db.Tables
                           where (t.Id == id && t.status == "Signed In")
                           select t).SingleOrDefault();
            olddata.status = "Signed Out";
            var res = db.SaveChanges();
            if (res > 0)
                Label1.Text="Status Updated";
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}

       