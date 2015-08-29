﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.Security;

namespace LectureExamples.Topic8
{
    public partial class SendEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string strPath = "";

        protected void SendingEmail(object sender, EventArgs e)
        {
            MailMessage newMsg = new MailMessage();

            foreach (GridViewRow gvRow in gvCustomers.Rows)
            {
                CheckBox cb = (CheckBox)gvRow.FindControl("chkEmail");

                if (cb != null && cb.Checked)
                {
                    newMsg.To.Add(new MailAddress(gvRow.Cells[2].Text, gvRow.Cells[1].Text));
                }
            }

            newMsg.From = new MailAddress("305791390@qq.com", "Coffie Bar");
            newMsg.Subject = txtSubject.Text;
            newMsg.Body = txtMsg.Text;

            bool sendEmail = true;
            if (fileUpload.HasFile)
            {
                if (UpLoadFile(fileUpload.FileName))
                {
                    Attachment newAttach = new Attachment(strPath);
                    newMsg.Attachments.Add(newAttach);
                }
                else
                {
                    sendEmail = false;
                }
            }
            if (sendEmail)
            {
                try
                {
                    SmtpClient smtp = new SmtpClient();
                    smtp.Credentials = new NetworkCredential("305791390@qq.com", "320311dtn");
                    smtp.Host = "smtp.qq.com";
                    smtp.Send(newMsg);
                    lblMail.Text = "Mail Successfully Sent";
                }
                catch (Exception exc)
                {
                    lblMail.Text = exc.Message;
                    txtMsg.Text = newMsg.From.Address + exc.StackTrace;
                }
            }
        }

        public bool UpLoadFile(string strFileName)
        {
            bool blnFileOK = false;
            string strExt =
              System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
            if ((strExt == ".gif") 
                ||(strExt == ".jpg")
                ||(strExt == ".png")
                ||(strExt == ".txt")
                ||(strExt == ".zip")
                || (strExt == ".pdf")
                )
            {
                blnFileOK = true;
                strPath =
                  Server.MapPath(".") + "/UploadFiles/" + strFileName;
                fileUpload.PostedFile.SaveAs(strPath);
               
            }
            else
            {   lblMail.Text = "Invalid File Type";
            }
            return blnFileOK;
        }

        protected void Email_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pri/displayCode.aspx?filename=~/pri/email.aspx");
        }
        protected void BtnSignOff_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/default.aspx");
        }
    }
}