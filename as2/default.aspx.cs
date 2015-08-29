using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace as2
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
    
       protected void  BtnSignOff_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/default.aspx");
        }

       protected void Master_Click(object sender, EventArgs e)
       {
           Response.Redirect("~/pri/displayCode.aspx?filename=~/master.Master");
       }

       protected void AdRotator_Click(object sender, EventArgs e)
       {
           Response.Redirect("~/pri/displayCode.aspx?filename=~/ad/Adrotator.xml&~/default.aspx");
       }

       protected void About_Click(object sender, EventArgs e)
       {
           Response.Redirect("~/pri/displayCode.aspx?filename=~/pri/about.aspx");
       }

     
    }
}