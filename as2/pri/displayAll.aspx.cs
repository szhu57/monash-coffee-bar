using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace as2.pri
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Res.Style.Add("display", "none");
            }
            else
            {
                Res.Style.Add("display", "block");
            }
        }
        protected void DisplayData(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                DisplayCustomer.Text =
                " <b>Customer ID: </b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[1].Text +
                "<br/> <b> Username:</b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[2].Text +
                "<br/> <b> Gender:</b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[3].Text +
                "<br/> <b> Age: </b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[4].Text +
                    "<br/> <b> Country: </b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[5].Text +
                  "<br/> <b> Birthday: </b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[6].Text +
                     "<br/> <b> Tel: </b>" +
                customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[7].Text +
                    "<br/> <b> E-mail: </b>" +
                 customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[8].Text +
                  "<br/> <b> Homepage: </b>" +
                  customer.Rows[Convert.ToInt32(e.CommandArgument)].
                Cells[9].Text;

            }
            catch { DisplayCustomer.Text = ""; }

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
             Response.Redirect("~/pri/displayCode.aspx?filename=~/pri/displayAll.aspx");
       }
        protected void BtnSignOff_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/default.aspx");
        }
    }
}