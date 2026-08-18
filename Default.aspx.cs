using System;

namespace Practical4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (chkTerms.Checked)
                {
                    lblMessage.Text = "Registration Successful!";
                    lblMessage.ForeColor =
                        System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text =
                        "Please accept Terms & Conditions.";
                    lblMessage.ForeColor =
                        System.Drawing.Color.Red;
                }
            }
        }
    }
}