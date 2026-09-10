using System;
using System.Web;

namespace LeaveApplication
{
    public partial class LeaveForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LeaveDate"] != null)
                {
                    txtLeaveDate.Text =
                        Session["LeaveDate"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            // Store data in Session

            Session["EmployeeID"] =
                txtEmployeeID.Text.Trim();

            Session["EmployeeName"] =
                txtEmployeeName.Text.Trim();

            Session["LeaveType"] =
                ddlLeaveType.SelectedValue;

            Session["Description"] =
                txtDescription.Text.Trim();


            // Create Cookie

            HttpCookie employeeCookie =
                new HttpCookie("Employee");

            employeeCookie["EmployeeID"] =
                txtEmployeeID.Text.Trim();

            employeeCookie["EmployeeName"] =
                txtEmployeeName.Text.Trim();

            employeeCookie.Expires =
                DateTime.Now.AddDays(1);

            Response.Cookies.Add(employeeCookie);


            // Display submitted information

            LblEmployeeID.Text =
                Session["EmployeeID"].ToString();

            LblEmployeeName.Text =
                Session["EmployeeName"].ToString();

            LblLeaveDate.Text =
                Session["LeaveDate"].ToString();

            LblLeaveType.Text =
                Session["LeaveType"].ToString();

            LblDescription.Text =
                Session["Description"].ToString();


            pnlResult.Visible = true;
        }
    }
}