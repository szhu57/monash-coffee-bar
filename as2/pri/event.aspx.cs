using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace as2.pri
{
    public partial class _event : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        OleDbConnection con;
        OleDbCommand com;
        string queryString = "select * from event";
        DataSet eventdays = new DataSet();

        protected void Cal_DayRender(object sender, DayRenderEventArgs e)
        {
            if (eventdays != null)
            {
               
                int num = 1;
                if (num > 0)
                {
                    Label lbl = new Label();
                    //lbl.Text += "&nbsp;" + Convert.ToString(num);
                   // lbl.CssClass = "glyphicon glyphicon-flag";
                    e.Cell.Controls.Add(lbl);
                }
            }
        }
        protected void Cal_Init(object sender, EventArgs e)
        {
            con = new OleDbConnection(WebConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            com = new OleDbCommand(queryString, con);
            bool todayHasEvent = false;
            con.Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(com);
            adapter.Fill(eventdays);
            con.Close();
            if (eventdays != null)
            {
                DateTime tempdate;
                foreach (DataRow dr in eventdays.Tables[0].Rows)
                {
                    tempdate = (DateTime)dr["EventDate"];
                    Cal.SelectedDates.Add(tempdate.Date);
                    if (tempdate.Date.ToShortDateString() == DateTime.Today.ToShortDateString())
                    {
                        ListItem item = new ListItem(tempdate.ToShortTimeString() + " : " + (string)dr["event"]);
                        item.Attributes.Add("class", "list-group-item");
                        bl.Items.Add(item);
                        todayHasEvent = true;
                    }
                }
            }
            lbldate.Text = "Event on " + DateTime.Today.ToShortDateString();
            if (!todayHasEvent)
            {
                ListItem temp = new ListItem("********No Event on this day!********");
                temp.Attributes.Add("class", "list-group-item");
                bl.Items.Add(temp);
            }
        }
        protected void Cal_SelectionChanged(object sender, EventArgs e)
        {
            bool hasEvent = false;
            DateTime sd = Cal.SelectedDate;
            lbldate.Text = "Event on " + sd.ToShortDateString();
            bl.Items.Clear();
            if (eventdays != null)
            {
                DateTime tempdate;
                foreach (DataRow dr in eventdays.Tables[0].Rows)
                {
                    tempdate = (DateTime)dr["EventDate"];
                    if (tempdate.Date.ToShortDateString() == sd.ToShortDateString())
                    {
                        ListItem item = new ListItem(tempdate.ToShortTimeString() + " ---- " + (string)dr["event"]);
                        item.Attributes.Add("class", "list-group-item");
                        bl.Items.Add(item);
                        hasEvent = true;
                    }
                    Cal.SelectedDates.Add(tempdate.Date);
                }
                if (!hasEvent)
                {
                    ListItem item = new ListItem("********No Event on this day!*********");
                    item.Attributes.Add("class", "list-group-item");
                    bl.Items.Add(item);
                }
            }
        }
        protected void Cal_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            bl.Items.Clear();

        }
        protected void BtnSignOff_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/default.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pri/displayCode.aspx?filename=~/pri/event.aspx");
        }
    }
}



