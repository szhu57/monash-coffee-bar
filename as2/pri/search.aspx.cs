using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace as2.pri
{
    public partial class displayAll : System.Web.UI.Page
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

        protected void searchCustomer(object sender, EventArgs e)
        {
            
            Button btn = (Button)sender;
            switch (btn.CommandName)
            {
                case "Username":
                    dsAccess.SelectCommand = "SELECT * FROM [user] WHERE Username LIKE '%" +
                    txtName.Text.Trim(' ') + "%'";
                    break;
                case "Country":
                    dsAccess.SelectCommand = "SELECT * FROM [user] WHERE Birthday LIKE '%" +
                    txtCountry.Text.Trim(' ') + "%'";
                    break;
                case "Email":
                    dsAccess.SelectCommand = "SELECT * FROM [user] WHERE Email LIKE '%" +
                    txtEmail.Text.Trim(' ') + "%'";
                    break;
            }
            lv.DataSource = dsAccess;
            lv.DataBind();
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pri/displayCode.aspx?filename=~/pri/search.aspx");
        }
        protected void BtnSignOff_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/default.aspx");
        }
    }
}