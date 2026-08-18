<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="Practical4.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>ONLINE EVENT REGISTRATION</h2>
            <br />
            <asp:Label ID="lblFullName"
                runat="server"
                Text="Full Name">
            </asp:Label>
            <asp:TextBox ID="txtFullName"
                runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rfvFullName"
                runat="server"
                ControlToValidate="txtFullName"
                ErrorMessage="*"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblEmail"
                runat="server"
                Text="Email Id">
            </asp:Label>

            <asp:TextBox ID="txtEmail"
                runat="server">
            </asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                ID="revEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                ErrorMessage="Enter a valid email address"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <br /><br />
            <asp:Label ID="lblContact"
                runat="server"
                Text="Contact No.">
            </asp:Label>

            <asp:TextBox ID="txtContact"
                runat="server">
            </asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvContact"
                runat="server"
                ControlToValidate="txtContact"
                ErrorMessage="Contact number is required"
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                ID="revContact"
                runat="server"
                ControlToValidate="txtContact"
                ValidationExpression="^[0-9]{10}$"
                ErrorMessage="Contact number must contain exactly 10 digits"
                ForeColor="Red">
            </asp:RegularExpressionValidator>
            <br /><br />
            <asp:Label ID="lblCollege"
                runat="server"
                Text="College">
            </asp:Label>
            <asp:TextBox ID="txtCollege"
                runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rfvCollege"
                runat="server"
                ControlToValidate="txtCollege"
                ErrorMessage="*"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblDepartment"
                runat="server"
                Text="Department">
            </asp:Label>
            <asp:RadioButtonList
                ID="rblDepartment"
                runat="server">
                <asp:ListItem Text="Computer"
                    Value="Computer">
                </asp:ListItem>
                <asp:ListItem Text="Mechanical"
                    Value="Mechanical">
                </asp:ListItem>
                <asp:ListItem Text="Chemical"
                    Value="Chemical">
                </asp:ListItem>
                <asp:ListItem Text="Civil"
                    Value="Civil">
                </asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="lblEvent"
                runat="server"
                Text="Event">
            </asp:Label>
            <asp:DropDownList
                ID="ddlEvent"
                runat="server">
                <asp:ListItem
                    Text="Select Event"
                    Value="">
                </asp:ListItem>
                <asp:ListItem
                    Text="Technical Event"
                    Value="Technical Event">
                </asp:ListItem>
                <asp:ListItem
                    Text="Cultural Event"
                    Value="Cultural Event">
                </asp:ListItem>
                <asp:ListItem
                    Text="Sports Event"
                    Value="Sports Event">
                </asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator
                ID="rfvEvent"
                runat="server"
                ControlToValidate="ddlEvent"
                InitialValue=""
                ErrorMessage="*"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="lblGender"
                runat="server"
                Text="Gender">
            </asp:Label>
            <asp:RadioButtonList
                ID="rblGender"
                runat="server">
                <asp:ListItem
                    Text="Male"
                    Value="Male">
                </asp:ListItem>
                <asp:ListItem
                    Text="Female"
                    Value="Female">
                </asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="lblSkills"
                runat="server"
                Text="Skills">
            </asp:Label>
            <br />
            <asp:CheckBox ID="chkCSharp"
                runat="server"
                Text="C#" />
            <br />
            <asp:CheckBox ID="chkPython"
                runat="server"
                Text="Python" />
            <br />
            <asp:CheckBox ID="chkAI"
                runat="server"
                Text="AI" />
            <br /><br />
            <asp:Label ID="lblAddress"
                runat="server"
                Text="Address">
            </asp:Label>
            <br />
            <asp:TextBox ID="txtAddress"
                runat="server"
                TextMode="MultiLine"
                Rows="4"
                Columns="30">
            </asp:TextBox>
            <br /><br />
            <asp:CheckBox
                ID="chkTerms"
                runat="server"
                Text="I accept Terms & Conditions" />
            <br /><br />
            <asp:Button
                ID="btnSubmit"
                runat="server"
                Text="Submit"
                OnClick="btnSubmit_Click" />
            <br /><br />
            <asp:Label
                ID="lblMessage"
                runat="server">
            </asp:Label>
        </div>
    </form>
</body>
</html>