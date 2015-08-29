using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace as2.pub
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ResultDiv.Style.Add("display", "none");
            }
            else
            {
                ResultDiv.Style.Add("display", "block");
            }
        }

        protected void findCustomer(object sender, EventArgs e)
        {

            RegDiv.Style.Add("display", "none");
            TextBox pname = (TextBox)FormView1.FindControl("pname");
            TextBox pword = (TextBox)FormView1.FindControl("pword");
            RadioButtonList pgender = (RadioButtonList)FormView1.FindControl("pgender");
            TextBox page = (TextBox)FormView1.FindControl("page");
            DropDownList pcountry = (DropDownList)FormView1.FindControl("pcountry");
            TextBox pbirth = (TextBox)FormView1.FindControl("pbirth");
            TextBox ptel = (TextBox)FormView1.FindControl("ptel");
            TextBox pemail = (TextBox)FormView1.FindControl("pemail");
            TextBox phome = (TextBox)FormView1.FindControl("phome");

            LblResult.Text = "<b> Username:</b>" + pname.Text + "<br/>" +
                          "<b> Password:</b>" + pword.Text + "<br/>" +
                           "<b> Gender:</b>" + pgender.Text + "<br/>" +
                          "<b> Age:</b>" + page.Text + "<br/>" +
                           "<b> Country:</b>" + pcountry.Text + "<br/>" +
                           "<b> Birthday:</b>" + pbirth.Text + "<br/>" +
                           "<b> Tel:</b>" + ptel.Text + "<br/>" +
                           "<b> Homepage:</b>" + phome.Text +
                             "<b> Email:</b>" + pemail.Text;


        }

        protected void BtnAddRecords_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/pri/displayCode.aspx?filename=~/pub/registration.aspx");

        }
    }
}